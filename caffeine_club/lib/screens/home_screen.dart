import 'package:caffeine_club/data/data.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:caffeine_club/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:caffeine_club/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      // App Bar au top de chaque page. Cette bar disparait dès qu'on scroll vers le bas.
      slivers: [
        SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Caffeine Club',
              style: const TextStyle(
                color: Palette.caffeineLogo,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              Container(
                // Ajout du boutons sur la droite de la Top Bar
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape
                        .circle // Ajout d'un cercle gris derrière le bouton.
                    ),
                child: IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: () {}, //Pour faire apparaitre le bouton.
                  // Possible également de faire l'appel via le Widget créé séparement.
                  //CircleButton(
                  //icon: Icons.search,
                  //iconSize: 30.0,
                  //onPressed: () => print('Search'))
                ), // Ajout du boutons sur la droite de la Top Bar
              ),
            ]),
        SliverToBoxAdapter(child: CreatePostContainer(currentUser: currentUser))
      ],
    ));
  }
}
