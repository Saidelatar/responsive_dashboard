import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, top: 16, right: 42),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16,
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24
                          .copyWith(color: Colors.white)),
                  Text('12/20 - 124',
                      style: AppStyles.styleRegular16
                          .copyWith(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
