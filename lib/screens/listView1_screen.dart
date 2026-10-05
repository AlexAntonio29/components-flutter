// ignore: file_names

import 'package:components/themes/themes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ListView1_screen extends StatelessWidget {
  final games = [
    "God of War",
    "Red dead Redemption",
    "Horizon",
    "Grand Theft Auto",
  ];
  ListView1_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar"),),

      body: Center(
        child: ListView(
          children: [
            ...games.map((game) {
              return (ListTile(
                trailing: Icon(Icons.arrow_forward_ios_outlined, color: GlobalThemes.primary, ),
             
                title: Text(game),
                 ));
            }),
          ],
        ),
      ),
    );
  }
}
