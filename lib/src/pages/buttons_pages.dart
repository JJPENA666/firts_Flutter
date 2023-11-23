import 'package:my_app/src/widgets/button.dart';
import 'package:my_app/src/widgets/icon-containers.dart';
import 'package:flutter/material.dart';
//import 'package:my_app/src/widgets/login_form.dart';

class ButtonsPages extends StatefulWidget {
  const ButtonsPages({super.key});

  @override
  State<ButtonsPages> createState() => _ButtonsPagesState();
}

class _ButtonsPagesState extends State<ButtonsPages> {
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
                "",
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
                "Pantalla Nº4",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 30.0,
                ),
              )),

              Divider(
                height: 30.0,
              ),
              

              Button()
            ],
          ),
        ),
      ),
    );
  }
}
