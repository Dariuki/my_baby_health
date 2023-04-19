import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  AddPerson({
    super.key,
  });

  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final growthController = TextEditingController();
  final weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Dodaj'),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            buildName(),
            const SizedBox(height: 8),
            buildLastName(),
            const SizedBox(height: 8),
            buildGrowth(),
            const SizedBox(height: 8),
            buildWeight(),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('POTWIERDŹ'),
        ),
      ],
    );
  }

  Widget buildName() => TextFormField(
        controller: nameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Name',
        ),
      );

  Widget buildLastName() => TextFormField(
        controller: lastNameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Last Name',
        ),
      );

  Widget buildGrowth() => TextFormField(
        controller: growthController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Growth',
        ),
        keyboardType: TextInputType.number,
      );

  Widget buildWeight() => TextFormField(
        controller: weightController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Weight',
        ),
        keyboardType: TextInputType.number,
      );
}
