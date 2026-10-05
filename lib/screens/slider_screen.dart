import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 200;
  bool _activate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SlideScreen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 100,
              max: 500,
              value: _value,
              onChanged: _activate?  (value) {
                _value = value;
                setState(() {});
              }:null,
            ),

            SwitchListTile.adaptive(
              title: Text("Activar Tamano"),
              value: _activate,
              onChanged: (value) => setState(() {
                _activate = value;
              }),
            ),

            const AboutListTile(),
            FadeInImage(
              width: _value,
              placeholder: AssetImage("assets/jar-loading.gif"),
              image: NetworkImage(
                "https://imgs.search.brave.com/G7LUgYkZVZOTH1Dk2pepLcnhc7kBcXSbv3_4fYFbd4I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vcGljanVt/Ym8uY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy9zaWxob3VldHRl/LW9mLWEtZ3V5LXdp/dGgtYS1jYXAtYXQt/cmVkLXNreS1zdW5z/ZXQtZnJlZS1pbWFn/ZS5qcGVnP2g9ODAw/JnF1YWxpdHk9ODA",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
