import 'package:flutter/material.dart';

class PeopleTile extends StatelessWidget {
  final String babyName;
  final String babyLastName;

  const PeopleTile({
    super.key,
    required this.babyName,
    required this.babyLastName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(32),
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          Text(babyName),
          const SizedBox(width: 5),
          Text(babyLastName),
        ],
      ),
    );
  }
}
