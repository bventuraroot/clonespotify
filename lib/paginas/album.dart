import 'dart:ffi';
import 'package:clonespotify/temas/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clonespotify/json/canciones_json.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key, this.canciones}) : super(key: key);
  final dynamic canciones;

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  dynamic canciones;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro,
      body: cuerpoAlbum(),
    );
  }

  Widget cuerpoAlbum() {
    var tamanio = MediaQuery.of(context).size;
    List songAlbums = widget.canciones['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: tamanio.width,
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.canciones['img']),
                        fit: BoxFit.cover)),
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                      color: blanco,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(FeatherIcons.moreVertical),
                      color: blanco,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
