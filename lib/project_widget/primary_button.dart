import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../app/app_font.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final Future Function() onPressed;

  const PrimaryButton({super.key, required this.onPressed, required this.text});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (isLoading) return;

        setState(() {
          isLoading = true;
        });
        await widget.onPressed();
        setState(() {
          isLoading = false;
        });
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: isLoading
            ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
            : AppText(widget.text),
      ),
    );
  }
}
