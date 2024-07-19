import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageColor, imageBackgroundColor, iconColor;
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 34, right: 20, left: 20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
                color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
                shape: const OvalBorder()),
            child: Center(
              child: SvgPicture.asset(
                image,
                colorFilter: ColorFilter.mode(
                    imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
              ),
            ),
          ),
          const Spacer(),
          Transform.rotate(
              angle: -3.14 / 2 * 2,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: iconColor ?? const Color(0xff064061),
              ))
        ],
      ),
    );
  }
}
