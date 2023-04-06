import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_dirad/GUI/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exercise/exercise1.dart';
import '../exercise/exercise2.dart';
import '../exercise/exercise3.dart';
import '../exercise/exercise4.dart';
import '../exercise/exercise5.dart';
import '../exercise/exercise6.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom:20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:80 , right: 15,left: 15, bottom: 20),
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
                            blurRadius: 2,
                            //spreadRadius: 3,
                            offset: Offset(8,10),

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
                              image: AssetImage('img/exercise.png'),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                    ),
                  ),
                ),

                SizedBox(height: 8,),

                Text("Here are some proven Exercises",
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


                SizedBox(height: 5,),


                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseOne()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:10 , right: 15,left: 15, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
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
                              //spreadRadius: 3,
                              offset: Offset(8,10),

                              color: Color.fromRGBO(191, 191, 191, 0.8),
                            )
                          ]
                      ),

                      child: SizedBox(
                        width:double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15, right: 15, top: 18,bottom: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('img/sukhasanaIntro.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Sukhasana: Easy Pose",
                                    style: GoogleFonts.roboto(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700,
                                    )),
                                  )
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseTwo()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:5 , right: 15,left: 15, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
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
                              //spreadRadius: 3,
                              offset: Offset(8,10),

                              color: Color.fromRGBO(191, 191, 191, 0.8),
                            )
                          ]
                      ),

                      child: SizedBox(
                        width:double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15, right: 15, top: 18,bottom: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('img/balasanaIntro.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Balasana: Child’s Pose",
                                      style: GoogleFonts.roboto(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w700,),
                                  ),
                                  )
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseThree()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:5 , right: 15,left: 15, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
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
                              //spreadRadius: 3,
                              offset: Offset(8,10),

                              color: Color.fromRGBO(191, 191, 191, 0.8),
                            )
                          ]
                      ),

                      child: SizedBox(
                        width:double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15, right: 10, top: 18,bottom: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('img/adhomukhasvanasanaIntro.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Adho Mukha Svanasana: \nDownward Facing Dog Pose",
                                        style: GoogleFonts.roboto(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w700,),
                                    ),
                                  )
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseFour()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:5 , right: 15,left: 15, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
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
                              //spreadRadius: 3,
                              offset: Offset(8,10),

                              color: Color.fromRGBO(191, 191, 191, 0.8),
                            )
                          ]
                      ),

                      child: SizedBox(
                        width:double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15, right: 15, top: 18,bottom: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('img/salambasarvangasanaIntro.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Salamba Sarvangasana: \nShoulderstand",
                                        style: GoogleFonts.roboto(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w700,)
                                    ),
                                  )
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseFive()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:5 , right: 15,left: 15, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
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
                              //spreadRadius: 3,
                              offset: Offset(8,10),

                              color: Color.fromRGBO(191, 191, 191, 0.8),
                            )
                          ]
                      ),

                      child: SizedBox(
                        width:double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15, right: 15, top: 18,bottom: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('img/savasana.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Savasana: Corpse Pose",
                                        style: GoogleFonts.roboto(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w700,),
                                    ),
                                  )
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseSix()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:5 , right: 15,left: 15, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
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
                              //spreadRadius: 3,
                              offset: Offset(8,10),

                              color: Color.fromRGBO(191, 191, 191, 0.8),
                            )
                          ]
                      ),

                      child: SizedBox(
                        width:double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15, right: 15, top: 18,bottom: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('img/exercise.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Some other exercises \nyou can follow",
                                        style: GoogleFonts.roboto(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w700,),
                                    ),
                                  )
                                ],
                              ),

                            ),

                          ],
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));},
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
