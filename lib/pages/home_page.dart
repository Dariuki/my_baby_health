import 'package:flutter/material.dart';

import 'package:my_baby_health/widget/alert_dialog_widget.dart';
import 'package:my_baby_health/widget/people_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = TextEditingController();
  final lastName = TextEditingController();

  List peopleList = [];

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
                  peopleList.add([name.text, lastName.text]);
                  name.clear();
                  lastName.clear();
                });
                Navigator.of(context).pop();
              },
              onCancel: () {
                Navigator.of(context).pop();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: peopleList.length,
        itemBuilder: (BuildContext context, int index) {
          return PeopleTile(
            babyName: peopleList[index][0],
            babyLastName: peopleList[index][1],
          );
        },
      ),
    );
  }
}
