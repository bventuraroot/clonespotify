import 'package:clonespotify/temas/colores.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  AlbumPage({Key? key, required canciones}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  final dynamic canciones = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro,
    );
  }
}
