import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_list_tile.dart';
import 'package:responsive_dashboard/views/widgets/inactive_list_tile.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveListTile(drawerItemModel: drawerItemModel)
        : InActiveListTile(drawerItemModel: drawerItemModel);
  }
}
