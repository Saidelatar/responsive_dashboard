import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot.dart';

class DotIndicator extends StatelessWidget {
  final int currenPageindex;
  const DotIndicator({super.key, required this.currenPageindex});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CustomDot(isActive: index == currenPageindex),
                )));
  }
}
