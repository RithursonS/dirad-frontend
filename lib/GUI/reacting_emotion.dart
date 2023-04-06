import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend_dirad/GUI/react_emotion.dart';
import 'package:google_fonts/google_fonts.dart';

class EmotionSelection extends StatefulWidget {
  const EmotionSelection({Key? key}) : super(key: key);

  @override
  State<EmotionSelection> createState() => _EmotionSelectionState();
}

class _EmotionSelectionState extends State<EmotionSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:90 , right: 15,left: 15, bottom: 20),
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
                          image: AssetImage('img/therapy3.jpeg'),
                          fit: BoxFit.fill
                      ),
                    ),

                  ),
                ),
              ),
            ),

            ///
            Text("Select the emoji that represent your current mode",
                style: GoogleFonts.bebasNeue(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Colors.orangeAccent
                )
            ),
            Text("Tap the one of emoji below",
                style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.orangeAccent.withOpacity(0.9)
                )
            ),

            Row(
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top:80 , right: 15,left: 15),
                    child: Container(
                      width: 160,
                      height: 160,
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
                                image: AssetImage('img/happy1.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmotionReaction()));
                  },
                ),
                ///
                Expanded(child: Container()),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top:80 , right: 35,left: 15, ),
                    child: Container(
                      width: 160,
                      height: 160,
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
                                image: AssetImage('img/sad.jpg'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmotionReaction()));
                  },
                ),
              ],
            ),

            //Row two with
            Row(
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20 , right: 15,left: 15, bottom: 20),
                    child: Container(
                      width: 160,
                      height: 160,
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
                                image: AssetImage('img/confused.png'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmotionReaction()));
                  },
                ),
                ///
                Expanded(child: Container()),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20 , right: 35,left: 15, bottom: 20),
                    child: Container(
                      width: 160,
                      height: 160,
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
                                image: AssetImage('img/angry.jpg'),
                                fit: BoxFit.fill
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmotionReaction()));
                  },
                ),
              ],
            )
          ],
        ),
      )

    );
  }
}
