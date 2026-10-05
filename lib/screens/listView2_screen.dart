// ignore: file_names


import 'package:components/themes/themes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ListView2_screen extends StatelessWidget {
  final games = [
    "God of War",
    "Red dead Redemption",
    "Horizon",
    "Grand Theft Auto",
  ];

  final colorTheme = GlobalThemes.primary;
  ListView2_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
       
      ),

      body: Center(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int i) => ListTile(
            
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: colorTheme,
            ),
            title: Text(games[i]),
            onTap: () {
              final game = games[i];
              print(game);
            },
          ),
          separatorBuilder: (_, _) => Divider(),
          itemCount: games.length,
        ),
      ),
    );
  }
}
