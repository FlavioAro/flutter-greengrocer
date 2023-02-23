import 'package:flutter/material.dart';
import 'package:greengrocer/src/constants.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  const CustomTextButton({
    Key? key,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: colorNeutral400,
        ),
      ),
    );
  }
}
