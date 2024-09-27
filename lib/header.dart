import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        "Willkommen zur Wetter-App!",
        style: TextStyle(shadows: <Shadow>[
          Shadow(offset: Offset(0, 1), blurRadius: 2, color: Colors.black38)
        ], fontSize: 26, fontWeight: FontWeight.w800, color: Colors.blue),
      ),
    );
  }
}
