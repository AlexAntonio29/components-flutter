import 'dart:math' show Random;

import 'package:components/themes/global_themes.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double width = 100;
  double heigth = 100;
  Color color = Colors.indigo;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(15);

  void change() {
    final random = Random();

    width = random.nextInt(300).toDouble()+70;
    heigth = random.nextInt(300).toDouble()+70;
    borderRadius = BorderRadius.circular(random.nextInt(30).toDouble()+10);
    color = Color.fromRGBO(
        random.nextInt(255)+0
      , random.nextInt(255)+0
      , random.nextInt(255)+0
      , 1);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Screen"),
        
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
          width: width,
          height: heigth,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: change,
        backgroundColor: GlobalThemes.primary,
        child: Icon(Icons.change_circle),
      ),
    );
  }
}
