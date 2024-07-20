import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const ShapeDecoration(
            image:
                DecorationImage(image: AssetImage(Assets.imagesCardBackground)),
            color: Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
      ),
    );
  }
}
