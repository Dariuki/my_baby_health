// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_baby_health/pages/edid_details_page.dart';

class PersonTile extends StatelessWidget {
  final String babyName;
  final String babyLastName;
  Function(BuildContext)? deliteFunction;
  Function(BuildContext)? editFunction;

  PersonTile({
    super.key,
    required this.babyName,
    required this.babyLastName,
    required this.deliteFunction,
    required this.editFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deliteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(15),
            )
          ],
        ),
        child: _PersonBuildTile(
          babyName: babyName,
          babyLastName: babyLastName,
        ),
      ),
    );
  }
}

class _PersonBuildTile extends StatelessWidget {
  const _PersonBuildTile({
    required this.babyName,
    required this.babyLastName,
  });

  final String babyName;
  final String babyLastName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 30,
          child: Icon(Icons.person_rounded, size: 40),
        ),
        Row(
          children: [
            Text(
              babyName,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 5),
            Text(
              babyLastName,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditDetailsPage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text(
            'Edit',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
