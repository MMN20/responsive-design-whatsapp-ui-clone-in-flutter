import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key, required this.mobileScreen, required this.webScreen});
  final Widget mobileScreen;
  final Widget webScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 850) {
          return mobileScreen;
        }
        return webScreen;
      },
    );
  }
}
