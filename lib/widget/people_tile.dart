// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PeopleTile extends StatelessWidget {
  final String babyName;
  final String babyLastName;
  Function(BuildContext)? deliteFunction;

  PeopleTile({
    super.key,
    required this.babyName,
    required this.babyLastName,
    required this.deliteFunction,
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              Text(babyName),
              const SizedBox(width: 5),
              Text(babyLastName),
            ],
          ),
        ),
      ),
    );
  }
}
