import 'package:alertdialog_project/registrationpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Custom Alert"),),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
             showDialogLogin(context);
            }, child: const Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold),)),

            ElevatedButton(onPressed: (){
               showDialogReg(context);
            },
                child: const Text("REGISTER",style: TextStyle(fontWeight: FontWeight.bold),)),
          ],
      ),
      ),
    );
  }

  Future showDialogLogin(context) {
     return showDialog(context: context, builder: (context){
       return   AlertDialog(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
           content: LoginPage(),
       );
     });
  }

  Future showDialogReg( context) {
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: RegistrationPage(),
      );
    });
  }


}



