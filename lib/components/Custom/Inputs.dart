import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Inputs extends StatelessWidget {
  final String currentLabel;
  final TextEditingController controller;
  final bool obscrure;
  final String currentError;

  const Inputs({
    super.key,
    required this.controller,
    required this.currentLabel,
    required this.obscrure,
    required this.currentError,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: ShadInput(
        textAlign: TextAlign.start,
        placeholder: Text(currentLabel),
        obscureText: obscrure,
        controller: controller,
        keyboardType:
            (currentLabel == 'Email') ? TextInputType.emailAddress : null,
        decoration: ShadDecoration(
            border: ShadBorder.all(
                color: (currentError == '') ? Colors.black : Colors.red)),
      ),
    );
  }
}
