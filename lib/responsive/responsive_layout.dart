import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScafffold;
  final Widget desktopScaffold;
  const ResponsiveLayout(
      {super.key,
      required this.desktopScaffold,
      required this.mobileScaffold,
      required this.tabletScafffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScafffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
