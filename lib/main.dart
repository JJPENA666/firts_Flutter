import 'package:flutter/material.dart';

import 'package:my_app/src/pages/home_pages.dart';
import 'package:my_app/src/pages/sing_in.dart';
import 'package:my_app/src/pages/sing_up.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //Aki creamos las rutas de navegación
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home": (BuildContext context) => const HomePages(),
        "Sing_in": (BuildContext context) => const SingIn(),
        "Sing_up": (BuildContext context) => const SingUp(),
      },
    );
  }
}
