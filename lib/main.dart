import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/utils/routes.dart';
import 'package:hello_world/widgets/theme.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme:MyTheme.lightTheme(context),
        darkTheme:MyTheme.darkTheme(context),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
