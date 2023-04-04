import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_dirad/exercise/exercise6.dart';

class ExerciseFive extends StatefulWidget {
  const ExerciseFive({Key? key}) : super(key: key);

  @override
  State<ExerciseFive> createState() => _ExerciseFiveState();
}

class _ExerciseFiveState extends State<ExerciseFive> {
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
                                image: AssetImage('img/savasana.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Savasana: Corpse Pose",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20, right:20 ),
                    child: Text("This meditation posture is great for mind control,"
                        " releasing stress, anxiety, and depression while also bringing "
                        "clarity to your experience. This position is usually done at "
                        "the end of each yoga session to allow you to absorb all of the "
                        "energy and revelations you've gained throughout your exercise. ",
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
                                image: AssetImage('img/SavasanaPose.png'),
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
                    child: Text("1. Separate your legs. Let go of holding your legs straight so that your"
                        " feet can fall open to either side.\n\n"
                        "2. Bring your arms alongside your body, but slightly separated from your torso."
                        " Turn your palms to face upwards but don't try to keep them open. Let the "
                        "fingers curl in.\n\n"
                        "3. Tuck your shoulder blades onto your back for support. This is a similar "
                        "movement to tucking the shoulders under in Bridge Pose, but less intense.\n\n"
                        "4. Once you have set up your limbs, release any effort from holding them in "
                        "position. Relax your whole body, including your face. Let your body feel heavy.\n\n"
                        "5. Let your breathing occur naturally. If your mind wanders, you can bring "
                        "your attention to your breath but try to just notice it, not deepen it.\n\n"
                        "6. Stay for a minimum of five minutes. Ten minutes is better. If you are "
                        "practicing at home, set an alarm so that you are not compelled to keep checking"
                        " the time.\n\n"
                        "7. To come out, first begin to the deepen your breath. Then begin to"
                        " wiggle your fingers and toes, slowly reawakening your body."
                        "Stretch your arms overhead for a full body stretch from hands to feet.\n\n"
                        "8. Bring your knees into your chest and roll over to one side, keeping "
                        "your eyes closed. Use your bottom arm as a pillow while you rest in a fetal "
                        "position for a few breaths.\n\n"
                        "9. Using your hands for support, bring yourself back up into a sitting position.\n\n"
                        "Tips:\n"
                        "Often, the mind wants to stay active even when the body is relaxed. Your mind"
                        " might have been calm during your pose sequence, but now you need to develop "
                        "that same calmness when at rest. If your mind won't stop chattering, try the"
                        " basic meditation techniques of noticing your thoughts, labeling them as "
                        "thinking, and then letting them go. Just like other types of yoga, this takes"
                        " practice. Eventually, you will notice that when your body goes into"
                        " Savasana, your mind also assumes a relaxed state.",
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
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseSix()));},
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
