import 'package:components/models/models.dart';
import 'package:components/screens/screens.dart';


class AppRoute {
  static const initialRoute = "home";

  static final getRoutes = <MenuOptions>[

    MenuOptions(
      route: "view1",
      icono: Icons.accessibility_new,
      name: "Vista 1",
      componente: ListView1_screen(),
    ),
    MenuOptions(
      route: "view2",
      icono: Icons.games,
      name: "Vista 2",
      componente: ListView2_screen(),
    ),
    MenuOptions(
      route: "alert",
      icono: Icons.bus_alert_sharp,
      name: "Alerta",
      componente: AlertScreen(),
    ),
 
    MenuOptions(
      route: "card",
      icono: Icons.card_membership,
      name: "Tarjeta",
      componente: CardScreen(),
    ),
    MenuOptions(
      route: "avatar",
      icono: Icons.account_circle_outlined,
      name: "Circle Avatar",
      componente: CircleAvatarScreen(),
    ),
    MenuOptions(
      route: "animated",
      icono: Icons.animation,
      name: "Animation Screen",
      componente: AnimationScreen(),
    ),
    MenuOptions(
      route: "textForm",
      icono: Icons.text_fields_rounded,
      name: "TextFormField Screen",
      componente: TextFormFieldScreen(),
    ),
    MenuOptions(
      route: "slide",
      icono: Icons.slideshow,
      name: "SlideScreen",
      componente: SliderScreen(),
    ),
    MenuOptions(
      route: "listviewbuilder",
      icono: Icons.list_alt,
      name: "ListViewBuilder Screen",
      componente: ListViewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes() {
    /*
    "home": (BuildContext context) => HomeScreen(),
    "view1": (BuildContext context) => ListView1_screen(),
    "view2": (BuildContext context) => ListView2_screen(),
    "alert": (BuildContext context) => AlertScreen(),
    "card": (BuildContext context) => CardScreen(),*/

    Map<String, Widget Function(BuildContext)> appRoutes = {};

  
      appRoutes.addAll({
        "home": (BuildContext context) => HomeScreen(),
      });

    for (var option in getRoutes) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.componente,
      });
    }

    return appRoutes;
  }

  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: (context) => const AlertScreen());
}
