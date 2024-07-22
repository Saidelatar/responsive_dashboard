import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '22%'),
    ItemDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '20%')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemDetails(itemDetailsModel: items[index]);
        });
  }
}

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetailsModel;
  const ItemDetails({super.key, required this.itemDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      subtitle: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(itemDetailsModel.value, style: AppStyles.styleMedium16),
    );
  }
}
