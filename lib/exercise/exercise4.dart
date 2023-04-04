import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'exercise5.dart';

class ExerciseFour extends StatefulWidget {
  const ExerciseFour({Key? key}) : super(key: key);

  @override
  State<ExerciseFour> createState() => _ExerciseFourState();
}

class _ExerciseFourState extends State<ExerciseFour> {
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
                                image: AssetImage('img/salambasarvangasana.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Salamba Sarvangasana: Shoulderstand",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20,right:20 ),
                    child: Text("Shoulderstand is another excellent yoga practice for "
                        "anxiety and depression relief. Shoulderstand, like downward-facing dog, "
                        "increases blood flow to the brain, improving mental clarity and emotion "
                        "regulation. It is important to note that if you have neck or shoulder pain,"
                        " high blood pressure, or are menstruating, you should avoid this position.",
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
                                image: AssetImage('img/salambasarvangasanaPose.png'),
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
                    child: Text("1. Lay down on your yoga mat, aligning your body with the blankets"
                        " as suggested above. With legs bent and feet on the floor "
                        "(as if setting up for Bridge pose), begin to walk your shoulders "
                        "underneath your upper back, feeling the chest rise gently.\n\n"
                        "2. Lift your hips off the mat coming into Bridge pose and "
                        "extend your arms onto the ground, palms facing down as if your "
                        "hands could touch your heels. \n\n"
                        "3. Press firmly into the palms,"
                        "using them as leverage to lift onto "
                        "the balls of the feet and extend one leg up.\n\n"
                        "4. Bend at the elbows, place your hands on your "
                        "low back (creating a shelf), then extend the next leg up. "
                        "Once you raise the legs, don't turn your head to the side to look "
                        "around the room as this can injure your neck. Instead, keep your gaze "
                        "upward and your neck straight.\n\n"
                        "5. Lift up through the balls of your feet, walking your hands further "
                        "up the back for more stability. Feel the chest reaching toward the chin "
                        "to support opening the upper back.\n\n"
                        "6. Move your hips toward the front of the room and your feet toward the "
                        "back of the room to straighten the body. This helps you get into the "
                        "correct alignment, which is the hips over the shoulders and feet over"
                        " the hips. (If you don't use blankets or other supports, do not bring "
                        "your body fully vertical.)\n\n"
                        "7. Stay in the pose for up to 10 breaths.\n\n"
                        "8. Come out of Shoulderstand by bringing your feet back over your head to"
                        " come through Plow pose, rolling out from Plow slowly.\n\n"
                        "Tips:\n"
                        "Very often, people do Shoulderstand with their butts sticking out and feet over their "
                        "foreheads instead of over their hips. This throws the whole pose off. To avoid "
                        "this issue, tuck your shoulder blades firmly into your back and make sure your "
                        "heels stay over your hips.If you don't keep your core engaged during this pose, you may "
                        "find it difficult to lift your hips fully, which can also make it harder to walk "
                        "your hands up your back. Consciously engage your core throughout the entire "
                        "movement.",
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
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseFive()));},
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
