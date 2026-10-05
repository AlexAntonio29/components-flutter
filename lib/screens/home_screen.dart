
import 'package:components/screens/screens.dart';
import 'package:components/models/models.dart';
import 'package:components/themes/themes.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Home"),

      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int i) => ListTile(
          leading:  Icon(AppRoute.getRoutes[i].icono, color: GlobalThemes.primary,),
          title: Text(AppRoute.getRoutes[i].name),
          onTap: () {
            /*
            
            final route = MaterialPageRoute(
              builder: (context) => ListView1_screen(),
            );

            Navigator.push(context, route);
            */

            Navigator.pushNamed(context, AppRoute.getRoutes[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoute.getRoutes.length,
      ),
    );
  }
}
