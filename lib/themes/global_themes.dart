import 'package:components/screens/screens.dart';

class GlobalThemes {
  static const primary = Color.fromARGB(255, 211, 52, 8);
  static const secundary = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.redAccent,
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      foregroundColor: secundary,
      elevation: 0,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
     
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: secundary,
        elevation: 0,
        shape: StadiumBorder()
      )
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: secundary,
      shape: StadiumBorder(),
      elevation: 5
      
      ),
    

inputDecorationTheme: InputDecorationTheme(

  floatingLabelStyle: TextStyle(color: primary),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:primary),
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(20))
  ) ,
  focusedBorder: OutlineInputBorder(
       borderSide: BorderSide(color:primary),
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(20))
 
  ),
  border: OutlineInputBorder(
      
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(20))
 
  ),
)

  );


  //Global Style TextButton 


}
