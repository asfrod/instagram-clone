import 'package:flutter/material.dart';
import 'package:instagram_clone/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ResponsiveLayout extends StatefulWidget {
  
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout({required this.webScreenLayout, required this.mobileScreenLayout});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {

  @override
  void initState() {
    super.initState();
    addData;
  }

  addData() async{
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 600) { //TODO: 600 valor original 1-constante para otro documento
        return widget.webScreenLayout;
      } else {
        return widget.mobileScreenLayout;
      }
    });
  }
}

