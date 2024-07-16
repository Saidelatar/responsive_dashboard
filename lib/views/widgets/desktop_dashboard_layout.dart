import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_darwer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDarwer()),
      ],
    );
  }
}
