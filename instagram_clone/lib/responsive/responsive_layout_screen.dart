import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout({required this.webScreenLayout, required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 600) { //TODO: 1-constante para otro documento
        return webScreenLayout;
      } else {
        return mobileScreenLayout;
      }
    });
  }
}

