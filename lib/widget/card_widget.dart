
import 'package:components/screens/screens.dart';

import '../themes/global_themes.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.camera_rounded,
              color: GlobalThemes.primary,
            ),
            title: Text("subtitle"),
            subtitle: Text(
              "Eu sint non labore minim dolore velit tempor sint ut.",
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text("Cancel")
                ),
                TextButton(onPressed: (){}, child: const Text("Ok"),)
              ],
            ),
          )
        ],
      ),

      
    );
  }
}