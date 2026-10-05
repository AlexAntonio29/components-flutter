
import 'package:components/models/models.dart' ;


class MenuOptions {
  final String route;
  final IconData icono;
  final String name;
  final Widget componente;

  MenuOptions({
  required this.route, 
  required this.icono, 
  required this.name, 
  required this.componente
  });
}
