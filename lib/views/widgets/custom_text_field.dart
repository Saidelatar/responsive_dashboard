import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  const CustomTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xffFAFAFA), width: 1),
  );
}
