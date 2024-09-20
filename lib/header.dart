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
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w800, color: Colors.blue),
      ),
    );
  }
}
