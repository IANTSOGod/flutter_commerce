import 'package:flutter/material.dart';

class Errortext extends StatelessWidget {
  final String title;

  const Errortext({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            title,
            style: const TextStyle(color: Colors.red),
          ),
        )
      ],
    );
  }
}
