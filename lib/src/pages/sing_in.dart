import 'package:flutter/material.dart';
import 'package:my_app/src/widgets/icon-containers.dart';
// ignore: unused_import
import 'package:my_app/src/widgets/login_form.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 0, 175, 52),
            Color.fromARGB(0, 195, 135, 134),
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            // ignore: prefer_const_literals_to_create_immutables
            children: const <Widget>[
              //Aqui le ubicaremos el url de una imagen.
              IconContainer(
                  url: "images/vita-marija-murenaite-5Q_Edarv5zQ-unsplash.jpg"),
              Center(
                  child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 40.0,
                ),
              )),
              Divider(
                height: 20.0,
              ),

              Center(
                  child: Text(
                "Pntalla Nº2",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 30.0,
                ),
              )),

              Divider(
                height: 30.0,
              ),
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
