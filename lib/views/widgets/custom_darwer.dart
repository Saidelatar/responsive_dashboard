import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_listview.dart';
import 'package:responsive_dashboard/views/widgets/inactive_list_tile.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDarwer extends StatelessWidget {
  const CustomDarwer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        DrawerItemListview(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSetting2, title: 'Setting system')),
              InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout account')),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 48,
          ),
        )
      ],
    );
  }
}
