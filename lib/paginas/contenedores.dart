import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clonespotify/temas/colores.dart';
import 'package:clonespotify/paginas/Home.dart';

class Contenedores extends StatefulWidget {
  Contenedores({Key? key}) : super(key: key);

  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: SpotFooter(),
      body: SpotBody(),
    );
  }

  Widget SpotBody() {
    return IndexedStack(
      index: menu_activo,
      children: [
        Home(),
        /*Center(
          child: Text(
            "Principal"
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),*/
        Center(
          child: Text(
            "Libreria",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Busqueda",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Configuraciones",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget SpotFooter() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.book,
      FeatherIcons.search,
      FeatherIcons.settings,
    ];

    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    menu_activo = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: menu_activo == index ? primario : blanco,
                ));
          }),
        ),
      ),
    );
  }
}
