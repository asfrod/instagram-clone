import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'utils/colors.dart';
import 'responsive/responsive_layout_screen.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram Clone',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: kMobileBackgroundColor
      ),
      home: const ResponsiveLayout( //Se puede agregar el const porque no se van a pasar valores dinamicos a el constructor
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout()
      ),
      
    );
  }
}
