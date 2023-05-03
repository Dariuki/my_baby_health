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

  final growthController = TextEditingController();

  final weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Dodaj'),
      content: Form(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(height: 8),
          TextFieldWidget(
            controller: nameController,
            title: 'Enter Name',
          ),
          const SizedBox(height: 8),
          TextFieldWidget(
            controller: lastNameController,
            title: 'Enter Last Name',
          ),
          const SizedBox(height: 8),
          TextFieldWidget(
            controller: growthController,
            title: 'Enter Growth',
          ),
          const SizedBox(height: 8),
          TextFieldWidget(
            controller: weightController,
            title: 'Enter Weight',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: 'Save', onPressed: onSave),
              const SizedBox(width: 10),
              MyButton(text: 'Cancel', onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
