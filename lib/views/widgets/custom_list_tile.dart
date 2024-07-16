import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  final String image, title, subtitle;
  const CustomListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(title, style: AppStyles.styleSemiBold16),
      subtitle: Text(subtitle, style: AppStyles.styleRegular12),
    );
  }
}
