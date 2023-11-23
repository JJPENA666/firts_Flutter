import 'package:flutter/material.dart';


class MenuLateral extends StatelessWidget {
  //stateless
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina Principal"),
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(197, 21, 92, 199),
      ),
      body: const Center(
        child: Center(
          child: Text("Contenido del Proyecto"),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text("Jonathan Peña"),
              accountEmail: Text("Jona@peña.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(
                    "images/Imagen de WhatsApp 2023-08-22 a las 09.57.40.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: AssetImage(
                      "images/Imagen de WhatsApp 2023-08-22 a las 09.57.40.jpg"),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage(
                      "images/Imagen de WhatsApp 2023-08-22 a las 09.57.40.jpg"),
                ),
              ],
              decoration: BoxDecoration(color: Color.fromARGB(199, 109, 4, 0))),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text("Etiqueta 1"),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text("Primera Opcion"),
          ),
          const ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Segunda Opcion"),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Tercera Opcion"),
          ),
        ],
      )),
    );
  }
}
