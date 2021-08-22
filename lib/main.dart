import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.preferences = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    title: "Awesome App",
    home: Constants.preferences.getBool("loggedIn") == true
        ? HomePage()
        : login_page(),
    theme: ThemeData(primarySwatch: Colors.purple),
    debugShowCheckedModeBanner: false,
    // routes: {
    //   "/login": (context) => login_page(),
    //   "/home": (context) => HomePage()
    // },
  ));
}
