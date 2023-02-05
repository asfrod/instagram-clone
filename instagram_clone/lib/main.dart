import 'dart:io';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'utils/colors.dart';
import 'responsive/responsive_layout_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
/*   bool needsWeb = Platform.isLinux | Platform.isWindows;
  if (needsWeb) {
    await Firebase.initializeApp(
      //options: DefaultFirebaseOptions.web
    );
  } else {
    await Firebase.initializeApp();
  }
   */
/*   await Firebase.initializeApp(
    options: needsWeb
        ? DefaultFirebaseOptions.web
        : DefaultFirebaseOptions.currentPlatform,
  ); */
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      ).copyWith(scaffoldBackgroundColor: kMobileBackgroundColor),
/*       home: const ResponsiveLayout(
          //Se puede agregar el const porque no se van a pasar valores dinamicos a el constructor
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()), */
        home: LoginScreen(),
    );
  }
}
