import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Linkline extends StatelessWidget {
  const Linkline({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Mot de passe oublié ?',
                style: TextStyle(fontSize: 18),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: TextButton(
              onPressed: () {
                context.go('/signup');
              },
              child: const Text(
                "S'inscrire",
                style: TextStyle(fontSize: 18),
              )),
        )
      ],
    );
  }
}
