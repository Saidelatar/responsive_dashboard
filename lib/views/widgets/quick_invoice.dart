import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';

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
            TitleTextField(title: 'Customer name', hint: 'Type customer name'),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hint;
  const CustomTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16,
      ),
    );
  }
}

class TitleTextField extends StatelessWidget {
  final String title, hint;
  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint),
      ],
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.black, width: 1),
  );
}
