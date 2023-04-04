import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_dirad/GUI/home_page.dart';
import 'package:frontend_dirad/GUI/starting_page.dart';

class ExerciseSix extends StatefulWidget {
  const ExerciseSix({Key? key}) : super(key: key);

  @override
  State<ExerciseSix> createState() => _ExerciseSixState();
}

class _ExerciseSixState extends State<ExerciseSix> {
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
                                image: AssetImage('img/aerobic.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Aerobic Exercise",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20,right:20 ),
                    child: Text("Aerobic exercise provides cardiovascular conditioning. "
                        "The term aerobic actually means 'with oxygen,' which means that "
                        "breathing controls the amount of oxygen that can make it to the "
                        "muscles to help them burn fuel and move."
                        "There is growing research evidence that regular "
                        "aerobic exercise (such as running, cycling or swimming) "
                        "is associated with better psychological health."
                        "Although studies have focused on depression, panic disorder, "
                        "and obsessive-compulsive disorder (OCD), there's also some evidence"
                        " to suggest a positive effect of exercise on social phobia."
                        "Both single sessions and long-term programs of aerobic exercise "
                        "have been shown to provide a positive benefit for psychological health."
                        "And especially cycling and jumping rope takes most imported place",
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
                                image: AssetImage('img/cycling.png'),
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
                    child: Text("Cycling:",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20,right:20, bottom:15),
                    child: Text("  Cycling has multiple mental health benefits, including reducing stress, "
                        "anxiety, and depression. The article also notes that cycling can help you with "
                        "your mindfulness practice, make improvements to your self-esteem, defend against "
                        "cognitive decline, and help you to socialize.""If you want to use exercise to improve "
                        "your mental health, this list of activities\n\n"
                        "  Can help you figure out what type of exercise is best for your lifestyle and mentality. "
                        "However, because everyone's interests and needs differ, don't feel limited to these options "
                        "or discouraged if an activity falls short of your expectations. Finding the right fit may "
                        "take some time, but your mental health is worth it. It is critical to select an activity that "
                        "you will be able to do on a consistent basis; if it is too difficult, you will be less likely "
                        "to incorporate it into your routine and reap the full benefits.",
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
                  SizedBox(height: 15),

                ],
              ),
            ),
          )
      ),
    );
  }
}
