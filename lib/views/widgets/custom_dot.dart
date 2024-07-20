import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  final bool isActive;
  const CustomDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(microseconds: 300),
        width: isActive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        ));
  }
}
