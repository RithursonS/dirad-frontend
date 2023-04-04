import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:frontend_dirad/GUI/home_page.dart';
import 'package:frontend_dirad/GUI/react_emotion.dart';
import 'package:frontend_dirad/GUI/user_exercise.dart';

class UserResult extends StatefulWidget {
  const UserResult({Key? key}) : super(key: key);

  @override
  State<UserResult> createState() => _UserResultState();
}

class _UserResultState extends State<UserResult> {

  var result = EmotionReaction.response;

  String finalResult() {
    if (result == null || result.isEmpty) {
      return "No result found";
    }

    var prediction = "";
    var preResult = 'The result is ${result}';
    try {
      if (preResult == 'The result is "1"') {
        prediction = "We Happy to say that\n "
            "You don't have any Mental Health Condition!!\n"
            "We have some exercises that's helps you maintain your mental health";
      } else if (preResult == 'The result is "0"') {
        prediction = "Our system has found out you have Mental Health Condition. "
            "Don't need to Worry about it we have some Exercises you can follow. "
            "Follow those Exercises for 3 days and retake the test";
      } else {
        prediction = "Invalid response2";
      }
    } catch (e) {
      prediction = "Invalid response 1";
    }
    return prediction;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top:90),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 15,),
            /// -- IMAGE
                 Padding(
                   padding: const EdgeInsets.only(top:10 , right: 15,left: 15, bottom: 20),
                   child: Container(
                     width: MediaQuery.of(context).size.width,
                     height: 220,
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                             colors: [
                               Colors.white60.withOpacity(0.5),
                               Colors.white54.withOpacity(0.9)

                             ]
                         ),
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(10),
                           bottomLeft: Radius.circular(10),
                           topRight: Radius.circular(10),
                           bottomRight: Radius.circular(10),
                         ),
                         border: Border.all(
                           color: Colors.white60,
                         ),

                         boxShadow: [
                           BoxShadow(
                             blurRadius: 4,
                             spreadRadius: 2,
                             offset: Offset(-8,10),

                             color: Color.fromRGBO(191, 191, 191, 0.8),
                           )
                         ]
                     ),
                       child: ClipRRect(
                         child: Container(
                           height: 230,
                           width: 350,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                                 image: AssetImage('img/happyResult.png'),
                                 fit: BoxFit.fill
                             ),
                           ),

                         ),
                       ),
                     ),
                 ),
                SizedBox(height: 8,),

                Text("See Your Results Below",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent
                    )
                ),
                Text("That can improve your Mental Health",
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent.withOpacity(0.9)
                    )
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(top:10 , right: 15,left: 15, bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.white60.withOpacity(0.5),
                              Colors.white54.withOpacity(0.9)

                            ]
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Colors.white60,
                        ),

                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(-8,10),

                            color: Color.fromRGBO(191, 191, 191, 0.8),
                          )
                        ]
                    ),
                    child: ClipRRect(
                      child: Container(
                        height: 280,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('img/resultArea2.png'),
                              fit: BoxFit.fill
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left:20, top: 20,right: 20 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Time to knowYour Mental Health Condition!!',
                                  style: GoogleFonts.badScript(
                                    fontSize: 18,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontFeatures: [
                                      FontFeature.enable('smcp'),
                                    ],
                                  )
                              ),
                              SizedBox(height: 10),

                              Text('${finalResult()} !!',
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 22,
                                    color: Colors.white,
                                  )
                              ),
                              SizedBox(height: 20),

                              Text('press start to go for the exercise page',
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 22,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  )
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 204, 102, 1)),
                                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 204, 102, 1)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.orangeAccent)
                                            )
                                        )
                                    ),

                                    child: Text('Exercises',
                                      style: GoogleFonts.roboto(
                                        fontSize: 22,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,),
                                    ),

                                    //Action Listener
                                    onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Exercise()));},
                                  ),
                                ],
                              ),
                            ],


                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 204, 102, 1)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 204, 102, 1)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.orangeAccent)
                                )
                            )
                        ),

                        child: Text('Go Home',
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,),
                        ),

                        //Action Listener
                        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));},
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
