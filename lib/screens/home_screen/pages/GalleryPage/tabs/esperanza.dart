import 'package:cssapp/screens/home_screen/pages/GalleryPage/widgets/gallery.dart';
import 'package:flutter/material.dart';
import 'package:cssapp/configs/configs.dart';

class Esperanza extends StatelessWidget {
  Esperanza({Key? key}) : super(key: key);

  final List<Image> esperanzaPics = [
    Assets.eventEsperanza1,
    Assets.eventEsperanza2,
    Assets.eventEsperanza3,
    Assets.eventEsperanza4
  ];

  @override
  Widget build(BuildContext context) {
    return Gallery(
      images: esperanzaPics,
      title: "ESPERANZA",
    );
  }
}
