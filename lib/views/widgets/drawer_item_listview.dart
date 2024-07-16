import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_item.dart';

class DrawerItemListview extends StatefulWidget {
  const DrawerItemListview({super.key});

  @override
  State<DrawerItemListview> createState() => _DrawerItemListviewState();
}

class _DrawerItemListviewState extends State<DrawerItemListview> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesMyTransction, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesStatstics, title: 'Statistics'),
    const DrawerItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {
              setState(() {
                activeIndex = index;
              }),
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomDrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
