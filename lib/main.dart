import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  void _launchUrl(String Url) async {
    if (!await canLaunch(Url)) {
      await launch(Url);
    } else {
      throw 'Couldnt open Url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xffffedbc),
              Color(0xffed4264),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                              child: CircleAvatar(
                                radius: 150,
                                backgroundImage: AssetImage("HNN.jpeg"),
                              )),
                          Center(
                              child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: "head",
                              color: Color(0xff3c1414),
                              fontWeight: FontWeight.bold,
                            ),
                            child: AnimatedTextKit(
                                pause: Duration(milliseconds: 2000),
                                totalRepeatCount: 1,
                                animatedTexts: [
                                  TyperAnimatedText("DISHA GUPTA"),
                                ]),
                          )),
                          Center(
                            child: DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Pro",
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                              ),
                              child: AnimatedTextKit(
                                  pause: Duration(milliseconds: 2000),
                                  totalRepeatCount: 1,
                                  animatedTexts: [
                                    TyperAnimatedText("App Developer"),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Row(children: <Widget>[
                            Icon(
                              Icons.school_rounded,
                              size: 35,
                              color: Colors.brown,
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Color(0xffb94e48),
                                  fontWeight: FontWeight.w600,
                                ),
                                child: AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  pause: Duration(milliseconds: 2000),
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        "AJAY KUMAR GARG ENG. COLLEGE"),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 35,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffb94e48),
                          fontWeight: FontWeight.w600,
                        ),
                        child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            pause: Duration(milliseconds: 2000),
                            animatedTexts: [
                              TypewriterAnimatedText("GHAZIABAD"),
                            ]),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.contact_phone_rounded,
                        size: 35,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xffb94e48),
                            fontWeight: FontWeight.w600,
                          ),
                          child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            pause: Duration(milliseconds: 2000),
                            animatedTexts: [
                              TypewriterAnimatedText("7820046192"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail_sharp,
                        size: 35,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xffb94e48),
                            fontWeight: FontWeight.w600,
                          ),
                          child: AnimatedTextKit(
                            pause: Duration(milliseconds: 2000),
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TyperAnimatedText("Disha2015430@akgec.ac.in")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.camera_alt,
                        size: 35,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchUrl("https://www.instagram.com/_dishagp_/");
                        },
                        child: Container (
                          alignment: Alignment.center,
                          child: Text("_dishagp_",style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xffb94e48),
                            fontWeight: FontWeight.w600,
                          ),),
                        ),),
                ],
                  ),
                ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 35,
                              color: Colors.brown,
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchUrl(
                                    "https://www.linkedin.com/in/disha-gupta-32854a219/");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("/disha-gupta-32854a219/",style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color(0xffb94e48),
                                  fontWeight: FontWeight.w600,
                                ),),),),
                            ],
                        ),
                      ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Center(
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  color: Color(0xff922724),
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "about",
                                ),
                              child: AnimatedTextKit(
                                  pause: Duration(milliseconds: 2000),
                                  totalRepeatCount: 1,
                                  animatedTexts: [
                                    TyperAnimatedText("EDUCATIONAL DETAILS"),
                              ]),
                              
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                "INTERMEDIATE\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 17.0,
                                  color: Color(0xff922724),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFFD3A5),
                                    Color(0xffFD6585),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomLeft,
                                )),
                                child: SizedBox(
                                  width: 300,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xff8b4513),
                                    ),
                                  child: AnimatedTextKit(
                                      pause: Duration(milliseconds: 2000),
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                    TyperAnimatedText("SVM SENIOR SECONDARY SCHOOL,ETAH \n Year:2019-20 \n Percentage: 95%"),
                                  ]),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                "HIGH SCHOOL\n",
                                style: TextStyle(
                                  color: Color(0xff922724),
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFFF886),
                                    Color(0xffB3CDD1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomLeft,
                                )),
                                child: SizedBox(
                                  width: 300,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      color: Color(0xff8b4513),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  child: AnimatedTextKit(
                                      pause: Duration(milliseconds: 2000),
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                    TyperAnimatedText("SVM SENIOR SECONDARY SCHOOL,ETAH\n Year:2017-18 \n Percentage: 97%"),
                                  ]),
                                  ),),
                            ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  color: Color(0xffb94e48),
                                  fontFamily: "about",
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              child: AnimatedTextKit(
                                  pause: Duration(milliseconds: 2000),
                                  totalRepeatCount: 1,
                                  animatedTexts: [
                                TyperAnimatedText("ABOUT ME"),
                              ]),
                            ),
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                  Color(0xffFAD7A1),
                                  Color(0xffE96D71),
                                ])),
                                child: SizedBox(
                                  width: 350,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff8b4513),
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w500,),
                                  child: AnimatedTextKit(
                                      pause: Duration(milliseconds: 2000),
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                    TypewriterAnimatedText("I'm a learner.Currently I'm focussing on learning app developement.I have learned many languages like C,C++,PYTHON.I love to sing, to dance,listening music,planting.I love to just see the natural things silently. I like to coad specially solving a problem in different ways. So, basically Im learning and enjoying my journey. "),
                                  ]),),
                              ),),

                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Thank you for visiting",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "By Disha",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                ),
            ),
      ],),
    ),
    ),
    ),
    );
  }
}
