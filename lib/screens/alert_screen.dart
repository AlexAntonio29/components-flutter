import 'package:flutter/cupertino.dart';
import 'package:components/screens/screens.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void calledAlertAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      
      builder: (context) {
        return AlertDialog(
          
          title: Text("Alert Dialog"),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          elevation: 5,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Fugiat mollit ipsum consectetur sunt aliquip tempor velit irure id adipisicing ad ipsum."),
              SizedBox(height: 20),
              FlutterLogo(
                size: 100,
              ),
             
            
            ],
            
          ),
          actions: [
            TextButton(onPressed: ()=>Navigator.pop(context), 
            child: Text("Cancelar"))
          ],
        );
      },
    );
  }


    void calledAlertIos(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      
      builder: (context) {
        return CupertinoAlertDialog(
          
          title: Text("Alert Dialog"),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Fugiat mollit ipsum consectetur sunt aliquip tempor velit irure id adipisicing ad ipsum."),
              SizedBox(height: 20),
              FlutterLogo(
                size: 100,
              ),
             
            
            ],
            
          ),
          actions: [
            TextButton(onPressed: ()=>Navigator.pop(context), 
            child: Text("Cancelar"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ElevatedButton(
            onPressed: () => 
              
              Platform.isAndroid ? calledAlertAndroid(context) : calledAlertIos(context),
            child: Text("Mostrar Alerta"),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
