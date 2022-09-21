import 'package:clonespotify/paginas/principal.dart';
import 'package:flutter/material.dart';

class SpotifyClone extends StatelessWidget {
  const SpotifyClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
