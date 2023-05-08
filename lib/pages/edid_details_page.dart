import 'package:flutter/material.dart';

class EditDetailsPage extends StatelessWidget {
  EditDetailsPage({
    super.key,
  });
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edytuj dane'),
      ),
      body: ListView(
        children: const [
          EditTile(
            tileName: 'imię i nazwisko',
          ),
          EditTile(
            tileName: 'wiek',
          ),
        ],
      ),
    );
  }
}

class EditTile extends StatelessWidget {
  final String tileName;

  const EditTile({
    super.key,
    required this.tileName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 7.5),
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tileName),
                Row(
                  children: const [
                    Text('data'),
                    Icon(Icons.edit),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 20,
          indent: 15,
          endIndent: 15,
          thickness: 2,
        ),
      ],
    );
  }
}
