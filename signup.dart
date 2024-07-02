// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           floatingActionButton: FloatingActionButton(
          onPressed: (){  Navigator.pop(context);  },
          
          backgroundColor:  Color.fromARGB(255, 185, 203, 240),
          child: Icon(Icons.home),
        ),
      // appBar: AppBar(
      //   title:Text ("signup", style: TextStyle(fontSize: 27),) ,
      //   centerTitle: true,
      //   backgroundColor: Colors.purple[300],
      // ),
      body : 
      SizedBox(
        width: double.infinity,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/login.svg", width: 220, height: 220,),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
            
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.purple[800],
                    ),
                    hintText: "Username : ",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.purple[800],
                    ),
                    hintText: "Your Email :",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffix: Icon(
                      Icons.visibility,
                      color: Colors.purple[900],
                    ),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.purple[800],
                      size: 19,
                    ),
                    hintText: "Password :",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
               
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(  Color.fromARGB(255, 121, 146, 235)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 91, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27))),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 22,color: Colors.white),
              ),
           
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
               margin: EdgeInsets.symmetric(vertical: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){      },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/facebook.svg",
                                 
                                  height: 20,
                                ),
                              ),
                            ),
                              SizedBox(
                              width: 22,
                            ),
                            GestureDetector(
                                  onTap: (){      },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/google-plus.svg",
                                  
                                  height: 20,
                                ),
                              ),
                            ),
                                SizedBox(
                              width: 22,
                            ),
                            GestureDetector(
                              onTap: (){      },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/twitter.svg",
                                  
                                  height: 20,
                                ),
                              ),
                            ),              
          ]
            ),
      ),
          ],
        ),
      ),
    );
  }
}