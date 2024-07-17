import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  const AllExpensesItemHeader({
    super.key,
    required this.image,
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
            decoration: const ShapeDecoration(
                color: Color(0xffFAFAFA), shape: OvalBorder()),
            child: SvgPicture.asset(image),
          ),
          const Spacer(),
          Transform.rotate(
              angle: -3.14 / 2 * 2,
              child: const Icon(Icons.arrow_back_ios_new_rounded))
        ],
      ),
    );
  }
}
