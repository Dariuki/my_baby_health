import 'package:flutter/material.dart';
import 'package:my_baby_health/widget/add_person.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
            builder: (BuildContext context) => AddPerson(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
