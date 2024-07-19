import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 24,
            ),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm(),
          ],
        ),
      ),
    );
  }
}

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type customer Email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(title: 'Item name', hint: 'Item mount')),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: 'Add more details',
              backgrounColor: Colors.white,
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomButton(
              title: 'Send Money',
              textColor: Color(0xffffffff),
            )),
          ],
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Color? backgrounColor, textColor;

  const CustomButton(
      {super.key, required this.title, this.backgrounColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgrounColor ?? const Color(0xff4EB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {},
        child: Text(title,
            style: AppStyles.styleSemiBold18.copyWith(
              color: textColor,
            )),
      ),
    );
  }
}
