import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/desktop_dashboard_layout.dart';
import 'package:responsive_dashboard/views/widgets/tablet_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const TabletDashboardLayout(),
          desktopLayout: (context) => const DesktopDashboardLayout()),
    );
  }
}
