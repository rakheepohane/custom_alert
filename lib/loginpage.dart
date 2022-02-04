import 'package:flutter/material.dart';

import 'main.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _FormKey = GlobalKey<FormState>();

    return SingleChildScrollView(
      child: Form(
        key: _FormKey,
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Image.asset("assets/flutter_logo.jpg",height: 100,width: 150,),
            // const SizedBox(height: 50,),
            // const Text("Login Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(decoration: const InputDecoration(labelText: "Username",hintText: "Enter Username"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username cannot be Empty';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: "Password",hintText: "Enter Password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot be Empty';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 20,),
                  ElevatedButton( child:const Text("Login"),
                    onPressed: (){
                      if(_FormKey.currentState!.validate()){
                        showDialog(context: context, builder: (context){
                          return Center(
                            child: AlertDialog(
                              title:  Image.network("https://th.bing.com/th/id/OIP.c0fNDjlEjTOz22FQl4cfLwAAAA?w=186&h=186&c=7&r=0&o=5&pid=1.7"),
                              content: const Text("Login Success !!",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              actions: [
                                FlatButton(child: const Text("Ok",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  onPressed: () {
                                    //Navigator.pop(context);
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                                    },
                                ),
                              ],
                            ),
                          );
                        });
                      }
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}


