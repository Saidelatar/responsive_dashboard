import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? backgrounColor, textColor;

  const CustomButton(
      {super.key, required this.title, this.backgrounColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgrounColor ?? const Color(0xff4EB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {},
        child: Text(title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            )),
      ),
    );
  }
}
