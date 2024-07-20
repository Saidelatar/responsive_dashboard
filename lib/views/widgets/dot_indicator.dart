import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(3, (index) => const CustomDot(isActive: false)));
  }
}
