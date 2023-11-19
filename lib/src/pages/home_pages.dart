import 'package:flutter/material.dart';
import 'package:my_app/src/pages/sing_in.dart';

import 'package:my_app/src/pages/sing_up.dart';
import 'package:my_app/src/widgets/icon-containers.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
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
            children: <Widget>[
              //Aqui le ubicaremos el url de una imagen.
              const IconContainer(
                  url:
                      "images/vita-marija-murenaite-5Q_Edarv5zQ-unsplash.jpg"),
              const Text(
                "Bienvenidos a mi curso",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 30.0,
                ),
              ),
              const Divider(
                height: 30.0,
              ),
              const Text(
                "",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 40.0,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => const SingIn());
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    "SING IN",
                    style: TextStyle(
                        color: Colors.orange,
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              ),
              const Divider(
                height: 30.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => const SingUp());
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    "SING UP",
                    style: TextStyle(
                        color: Colors.orange,
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
