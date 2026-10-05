
import 'package:components/themes/global_themes.dart';
import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
   
  const CircleAvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: Text("Circle Avatar"),

        
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("AZ"),
              backgroundColor: GlobalThemes.secundary,
            ),
          )
        ],

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                ("https://imgs.search.brave.com/ZnCuwB6kvwWwxgCo0XzInuKfcHFTFHhLFuUAfVU7ujA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wb2V0/cy5vcmcvc2l0ZXMv/ZGVmYXVsdC9maWxl/cy9pbWFnZXMvYmlv/Z3JhcGhpZXMvMTMw/X2VhcG9lLmpwZw")
              ),
            )
          ],
           
        ),
      ),
    );
  }
}