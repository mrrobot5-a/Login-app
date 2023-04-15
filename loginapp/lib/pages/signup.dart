// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                width: 130,
                child: Image(
                  image: AssetImage('assets/images/signup_top.png'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:30),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontFamily: "font"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 300,
                      //margin: EdgeInsets.only(top: 39),
                      child: SvgPicture.asset(
                        "assets/icons/signup.svg",
                      ),
                    ),
                      SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 217, 238, 1),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      width: 260,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(78, 24, 102, 1),
                          ),
                          hintText: "email",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 97, 44, 106),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 217, 238, 1),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      width: 260,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(221, 192, 233, 1),
                          ),
                          hintText: "Password",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 97, 44, 106),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Color.fromARGB(255, 97, 44, 106),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context,'/login');
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(13),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 97, 44, 106)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already Have An Account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/login');
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              color: Color.fromARGB(255, 97, 44, 106),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Or",style: TextStyle(fontFamily: "font",
                    fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Container(
                        width: 100,
                        height: 20,
                          child: SvgPicture.asset("assets/icons/facebook.svg",
                          color:Color.fromARGB(255, 97, 44, 106),
                          
                          ),    
                        ),                       

                        Container(
                        width: 100,
                        height: 20,
                          child: SvgPicture.asset("assets/icons/twitter.svg",
                          color:Color.fromARGB(255, 97, 44, 106),
                          
                          ),    
                        ),
                        Container(
                        width: 100,
                        height: 20,
                          child: SvgPicture.asset("assets/icons/google-plus.svg",
                          color:Color.fromARGB(255, 97, 44, 106),
                          
                          ),    
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//todo 1 : Naviagtor page 
//todo 2 : make last page Sign up 
//todo 3 : when you make a social media photos , i want when you press on facebook , the link
//will go to my facebook  
//todo 4 solve the problem of inspect 