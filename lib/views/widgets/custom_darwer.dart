import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_listview.dart';
import 'package:responsive_dashboard/views/widgets/inactive_list_tile.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDarwer extends StatelessWidget {
  const CustomDarwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 20, left: 28, top: 8, bottom: 8),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    image: Assets.imagesAvatar1,
                    title: 'Lekan Okeowo',
                    subtitle: 'demo@gmail.com'),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListview(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(left: 28),
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  InActiveListTile(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesSetting2,
                          title: 'Setting system')),
                  InActiveListTile(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesLogout, title: 'Logout account')),
                  SizedBox(
                    height: 48,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
