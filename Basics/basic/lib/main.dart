import 'package:basic/screens/home_page.dart';
import 'package:basic/screens/login_page.dart';
import 'package:basic/utils/routes.dart';
import 'package:basic/widgets/themes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",

      ///initial routes means the default landing screen of appication
      routes: {
        // "/" empty routes indicate that /the that routes context will be the homepage itself for the application

        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
