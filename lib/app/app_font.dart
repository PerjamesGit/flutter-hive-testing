import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppText extends StatelessWidget {
  final String text;

  const AppText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}
