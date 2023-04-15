// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
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
                width: 90,
                child: Image(
                  image: AssetImage('assets/images/main_top.png'),              
                ),
              ),    
              Positioned(
                bottom: 0,
                width: 90,
                child: Image(
                  image: AssetImage('assets/images/main_bottom.png'),
                ),
              ),    
              SizedBox(       
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Text(
                      "WELCOME TO EDU ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontFamily: "font"),
                    ),
                  ),
                  Container(
                    width: 300,
                    //margin: EdgeInsets.only(top: 39),
                    child: SvgPicture.asset(
                      "assets/icons/chat.svg",
                    ),
                  ),
                  Container(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        //put here navigator push icon
                          Navigator.pushNamed(context, '/login');

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
                        "Login",
                        style: TextStyle(fontSize: 20),
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
                        Navigator.pushNamed(context, '/sign');
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(13),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(221, 192, 233, 1)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                        ),
                      ),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 97, 44, 106),
                        ),
                      ),
                    ),
                  ),
                ]),
   
             
              ),

            ],
          ),
        ),
      ),
    );
  }
}
