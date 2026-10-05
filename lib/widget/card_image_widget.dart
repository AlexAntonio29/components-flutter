import 'package:components/themes/global_themes.dart';
import 'package:flutter/material.dart';

class CardImageScreen extends StatelessWidget {
  final String urlImage;
  final String? name;

  const CardImageScreen({Key? key, required this.urlImage,  this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: GlobalThemes.primary.withOpacity(0.5),
      elevation: 10,
      child: Column(
        children: [
           FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(  urlImage ),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          
          if(name!=null)
          Container(
            padding: EdgeInsets.only(bottom: 10, top: 20),
            child: Text(name!),
          ),
        ],
      ),
    );
  }
}
