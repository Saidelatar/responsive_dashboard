import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: const Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)))),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -3.14 / 2,
              child: const Icon(Icons.arrow_back_ios_new_rounded))
        ],
      ),
    );
  }
}
