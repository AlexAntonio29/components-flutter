import 'package:components/themes/themes.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "use Widgets",
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.routes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      theme: GlobalThemes.lightTheme
      ,
    );
  }   
}
