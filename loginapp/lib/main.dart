import 'package:flutter/material.dart';
import 'package:loginapp/pages/welcome.dart';
import 'package:loginapp/pages/login.dart';
import 'package:loginapp/pages/signup.dart';

void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override Widget build(BuildContext context){
      return MaterialApp(
         debugShowCheckedModeBanner: false,

    initialRoute:'/welcome',
          routes: {
        "/welcome":(context)=>Welcome(),
        "/login":(context)=>Login(),
        "/sign":(context)=>SignUp(),

      },
      );
  }
}
