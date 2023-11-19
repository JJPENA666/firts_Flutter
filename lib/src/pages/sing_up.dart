import 'package:flutter/material.dart';
import 'package:my_app/src/widgets/icon-containers.dart';
import 'package:my_app/src/widgets/register.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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
          ], begin: Alignment.topLeft)),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              //Aqui le ubicaremos el url de una imagen.
              const IconContainer(
                  url: "images/vita-marija-murenaite-5Q_Edarv5zQ-unsplash.jpg"),
              const Text(
                "",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 30.0,
                ),
              ),
              const Divider(
                height: 30.0,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 40.0,
                ),
              ),

              const Divider(
                height: 30.0,
              ),
              // ignore: prefer_const_constructors
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}
