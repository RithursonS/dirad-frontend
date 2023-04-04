import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'exercise2.dart';

class ExerciseOne extends StatefulWidget {
  const ExerciseOne({Key? key}) : super(key: key);

  @override
  State<ExerciseOne> createState() => _ExerciseOneState();
}

class _ExerciseOneState extends State<ExerciseOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              image: AssetImage('img/sukhasana.png'),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Sukhasana: Easy Pose",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                          color: Colors.orangeAccent
                      )),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20, right: 20 ),
                  child: Text("It is the classic meditative posture of sitting on the "
                      "floor with crossed legs and an upright spine. Despite the fact that many people do not consider "
                      "it a yoga pose, easy position is a powerful tool for regaining the strength you "
                      "need to deal with anxiety, sadness, and extreme stress. The symmetry of this posture, "
                      "as well as the base of your spine, are two factors that help you overcome stress by "
                      "giving you the impression that nothing can shake you or throw you off track. Every Morning start "
                      "doing this exercise with least 15 min on quiet place if while listing calm music also preferable."
                      "below you can see how make this position ",
                      style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:20 , right: 15,left: 15, bottom: 20),
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
                              image: AssetImage('img/sukhasanaPose.png'),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Instructions:",
                      style: GoogleFonts.bebasNeue(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.orangeAccent
                      )),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right:20, bottom:15),
                  child: Text("1. Come into a seated position with the buttocks on the floor, "
                      "then cross the legs, placing the feet directly below the knees. Rest the "
                      "hands on the knees or the lap with the palms facing up or down.\n\n"
                      "2. Press the hip bones down into the floor and reach the crown of the head "
                      "up to lengthen the spine. Drop the shoulders down and back, and press the "
                      "chest towards the front of the room.\n\n"
                      "3. Relax the face, jaw, and belly. Let the tongue rest on the roof of the mouth, "
                      "just behind the front teeth.\n\n""4. Breathe deeply through the nose down into the "
                      "belly. Hold as long as comfortable.",
                      style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                      )),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
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

                        child: Text('Next',
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,),
                        ),

                        //Action Listener
                        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseTwo()));},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        )
      ),

    );
  }
}


