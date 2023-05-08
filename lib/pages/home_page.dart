import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_baby_health/data/database.dart';
import 'package:my_baby_health/pages/edid_details_page.dart';

import 'package:my_baby_health/widget/alert_dialog_widget.dart';
import 'package:my_baby_health/widget/person_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBabyBox = Hive.box('myBabyBox');
  MyBabyHealthDataBase db = MyBabyHealthDataBase();

  @override
  void initState() {
    if (_myBabyBox.get('MYBABYSLIST') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final name = TextEditingController();
  final lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Lista Dzieci'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AddPerson(
              nameController: name,
              lastNameController: lastName,
              onSave: () {
                setState(() {
                  db.myBabyList.add([name.text, lastName.text]);
                  name.clear();
                  lastName.clear();
                });
                Navigator.of(context).pop();
                db.updateData();
              },
              onCancel: () {
                Navigator.of(context).pop();
              },
            ),
          );
        },
        child: const Icon(Icons.person_add_alt_1),
      ),
      body: ListView.builder(
        itemCount: db.myBabyList.length,
        itemBuilder: (BuildContext context, int index) {
          return PersonTile(
            babyName: db.myBabyList[index][0],
            babyLastName: db.myBabyList[index][1],
            editFunction: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditDetailsPage(),
                  fullscreenDialog: true,
                ),
              );
            },
            deliteFunction: (context) => setState(
              () {
                db.myBabyList.removeAt(index);
                db.updateData();
              },
            ),
          );
        },
      ),
    );
  }
}
