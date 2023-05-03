import 'package:flutter/material.dart';
import 'package:my_baby_health/widget/button_widget.dart';
import 'package:my_baby_health/widget/text_field_widget.dart';

class AddPerson extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController lastNameController;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  AddPerson({
    super.key,
    required this.nameController,
    required this.lastNameController,
    required this.onSave,
    required this.onCancel,
  });

  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Dodaj'),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            TextFieldWidget(
              controller: nameController,
              title: 'Enter Name',
              keyboard: TextInputType.name,
            ),
            const SizedBox(height: 8),
            TextFieldWidget(
              controller: lastNameController,
              title: 'Enter Last Name',
              keyboard: TextInputType.name,
            ),
            const SizedBox(height: 8),
            TextFieldWidget(
              controller: ageController,
              title: 'Enter Age',
              keyboard: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(width: 10),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
