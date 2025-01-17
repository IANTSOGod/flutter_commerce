import "package:flutter/material.dart";

class Routingerrorpage extends StatelessWidget {
  const Routingerrorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("404 |", style: TextStyle(color: Colors.blue, fontSize: 30)),
            SizedBox(
              width: 50,
            ),
            Text("Aucune route correspondante",
                style:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
