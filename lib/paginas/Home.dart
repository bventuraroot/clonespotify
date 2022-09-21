import 'package:clonespotify/json/canciones_json.dart';
import 'package:clonespotify/paginas/album.dart';
import 'package:clonespotify/temas/colores.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro,
      appBar: barraSporApp(),
      body: cuerpoSpot(),
    );
  }

  barraSporApp() {
    return AppBar(
      backgroundColor: negro,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Home",
                style: TextStyle(
                    fontSize: 20, color: blanco, fontWeight: FontWeight.bold)),
            Icon(Icons.list_outlined)
          ],
        ),
      ),
    );
  }

  cuerpoSpot() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Row(
                children: List.generate(song_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          menuactivo = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            song_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: menuactivo == index ? primario : gris,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 3),
                          menuactivo == index
                              ? Container(
                                  width: 15,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: primario,
                                      borderRadius: BorderRadius.circular(50)))
                              : Container()
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: List.generate(songs.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        //Cambio de widget
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: AlbumPage(canciones: songs[index]),
                                type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(songs[index]['img'])),
                                color: primario,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            songs[index]['title'],
                            style: TextStyle(
                                color: blanco,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 180,
                            child: Text(
                              songs[index]['description'],
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: primario,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Row(
                children: List.generate(song_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          menuactivo2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            song_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: menuactivo2 == index ? primario : gris,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 3),
                          menuactivo2 == index
                              ? Container(
                                  width: 15,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: primario,
                                      borderRadius: BorderRadius.circular(50)))
                              : Container()
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(height: 50),

          //segundo bloque imagenes
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: List.generate(songs.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: AlbumPage(canciones: songs[index]),
                                type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(songs[index]['img'])),
                                color: primario,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            songs[index]['title'],
                            style: TextStyle(
                                color: blanco,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 180,
                            child: Text(
                              songs[index]['description'],
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: primario,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
