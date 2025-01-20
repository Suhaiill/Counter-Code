import 'package:flutter/material.dart';
import 'package:responisive_ui/responsive/desktop_scaffold.dart';
import 'package:responisive_ui/responsive/mobile_scaffold.dart';
import 'package:responisive_ui/responsive/responsive_layout.dart';
import 'package:responisive_ui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        desktopScaffold: DesktopScaffold(),
        mobileScaffold: MobileScaffold(),
        tabletScafffold: TabletScaffold(),
      ),
    );
  }
}
