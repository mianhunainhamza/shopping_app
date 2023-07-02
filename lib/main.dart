import 'package:flutter/material.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/login.dart';
import 'package:shopping_app/utils/routes.dart';
import 'package:shopping_app/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/home",
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRotue: (context) => const Login()
      },
    );
  }
}
