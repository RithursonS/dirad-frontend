import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_dirad/exercise/exercise3.dart';

class ExerciseTwo extends StatefulWidget {
  const ExerciseTwo({Key? key}) : super(key: key);

  @override
  State<ExerciseTwo> createState() => _ExerciseTwoState();
}

class _ExerciseTwoState extends State<ExerciseTwo> {
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
                                image: AssetImage('img/balasana.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Balasana: Child’s Pose",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20, ),
                    child: Text("Child's pose is one of the most relaxing and "
                        "soothing positions in yoga. You may relax and unwind "
                        "here since you're completely grounded. In times of "
                        "anxiety and distress, the feeling of being supported "
                        "by the soil can bring considerable mental peace.",
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
                                image: AssetImage('img/balasanaPose.png'),
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
                    child: Text("1. Sit on your heels, knees spread mat distance apart and bring your head towards the floor\n\n"
                        "2. Your arms can be either stretched out to the front, by your side or hands underneath your forehead\n\n"
                        "3. Breathe into your lower back\n\n"
                        "4. Stay for anywhere between 30 seconds and several minutes in this resting pose\n\n"
                        "5. To come out, exhale and roll up vertebra by vertebra, or come back to sitting with a straight spine\n\n"
                        "Tips :\n"
                        "Child’s pose is about being comfortable and rested as well as increasing flexibility in the hips and back. "
                        "Many people find it more comfortable to take the knees wider (to the width of a yoga mat). "
                        "This also creates more space if you have a larger belly or breasts."
                        "Use props or stack your fists to support your forehead if it doesn’t reach the floor comfortably"
                        "Use padding under your knees or ankles if you need to.",
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
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseThree()));},
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



exercise 3 



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
                                image: AssetImage('img/adhomukhasvanasana.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Adho Mukha Svanasana: Downward Facing Dog Pose",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20,right: 20 ),
                    child: Text("This is a very common practice in Yoga. It increases "
                        "blood flow to your brain while also stretching and "
                        "strengthening your spine, arms, shoulders, and legs. "
                        "By increasing circulation to this area, we can gain more "
                        "energy and mental clarity, which will help us deal with "
                        "issues that cause us stress or anxiety.",
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
                                image: AssetImage('img/adhomukhasvnasanaPose.png'),
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
                    child: Text("1. Come to your hands and knees with your wrists "
                        "underneath the shoulders and your knees underneath the hips.\n\n"
                        "2. Curl your toes under and push back through your hands to lift "
                        "your hips and straighten your legs.\n\n"
                        "3. Spread your fingers and ground down from the forearms into the "
                        "fingertips.\n\n"
                        "4. Outwardly rotate your upper arms to broaden the collarbones.\n\n"
                        "5. Let your head hang and move your shoulder blades away from your "
                        "ears towards your hips.\n\n"
                        "6. Engage your quadriceps strongly to take the burden of your "
                        "body's weight off your arms. This action goes a long way toward"
                        " making this a resting pose.\n\n"
                        "7. Rotate your thighs inward, keep your tail high, and sink your "
                        "heels towards the floor."
                        "Check that the distance between your hands and feet is correct by"
                        " coming forward to a plank position. The distance between the hands "
                        "and feet should be the same in these two poses. Do not step the "
                        "feet toward the hands in Down Dog in order the get the heels to the "
                        "floor.\n\n"
                        "8. Exhale and bend your knees to release and come back to your hands "
                        "and knees.\n\n"
                        "Tips :\n"
                        "The most common issue with beginners' Downward Facing Dog is that they "
                        "don't release their heels toward the floor. If you are up on the balls of "
                        "your feet, it shifts the trajectory of the pose forward instead of back. "
                        "It will never be a resting position unless you take your weight back into "
                        "your heels.If you are very flexible, try not to let your rib cage sink towards"
                        " the floor, creating a sinking spine (also known as banana back). Draw your ribs"
                        " in to maintain a flat back.",
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
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExerciseFour()));},
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
