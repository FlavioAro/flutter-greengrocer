import 'package:flutter/material.dart';
import 'package:greengrocer/src/utils/colors.dart';

class CustomOutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  const CustomOutlineButton({
    Key? key,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 2,
            color: colorNeutral300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
