import 'package:flutter/material.dart';

class StripeButton extends StatelessWidget {
  const StripeButton({
    super.key,
    required this.onTap,
    required this.title,
    this.decoration,
    this.titleStyle,
  });

  final VoidCallback onTap;
  final BoxDecoration? decoration;
  final String title;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 12,
        ),
        decoration: decoration ??
            BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2),
            ),
        child: Center(
          child: Text(
            title,
            style: titleStyle ??
                const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
      ),
    );
  }
}
