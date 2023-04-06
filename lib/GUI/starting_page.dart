import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_dirad/GUI/reacting_emotion.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:frontend_dirad/GUI/react_emotion.dart';
import 'package:frontend_dirad/GUI/user_exercise.dart';

class StartPage extends StatefulWidget {

  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  final userMail = FirebaseAuth.instance.currentUser!.email!;

  static String firstName = "";

  Future<void> getUserDetails(String email) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
      firstName = documentSnapshot.get('first name');


      // Do something with the user details...
      print('First Name: $firstName');

    } else {
      // Handle the case where the user is not found...
      print('User not found for email: $email');
    }
  }



  final List<String> imgList= [

    'https://www.boldsky.com/img/2020/06/7-1592219040.jpg',
    'https://www.boldsky.com/img/2020/06/1-1592219009.jpg',
    'https://www.boldsky.com/img/2020/06/12-1592219068.jpg',
    'https://www.boldsky.com/img/2020/06/5-1592219031.jpg'
  ];




    @override
  Widget build (BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(217, 217, 217, 0.3),
        body: Container(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                  child:  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20,left: 20,top: 20,),
                      child: Container(
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      child: CircleAvatar(
                                        radius: 50,
                                        child: Image.asset(
                                            "img/doc4.jpg"
                                        ),
                                      ),
                                    ),
                                  ),

                                  Expanded(child: Container()),
                                  Column(
                                    children: [
                                      Text('Welcome',
                                        style: GoogleFonts.pacifico(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
                                      FutureBuilder(
                                        future: getUserDetails(userMail),
                                        builder: (context, snapshot){
                                          return Text('$firstName',
                                            style: GoogleFonts.pacifico(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Search Bar
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:12 , right: 20,left: 20),
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
                            offset: Offset(-8,10),
                            blurRadius: 2,
                            color: Color.fromRGBO(191, 191, 191, 0.9),
                          )
                        ]
                    ),

                    //image slider
                    child: CarouselSlider(
                        items: imgList.map((item)=>Container(
                          child: Center(
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: 1300,
                            ),
                          ),

                        )
                        ).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                        )

                    ),
                  ),
                ),

                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(top:10,bottom:10,right: 20,left:20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(191, 191, 191, 0.9),
                          offset: Offset(-8,10),
                          blurRadius: 1,

                        )
                      ]

                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Here',
                        hintStyle: TextStyle(
                            color: Colors.black12.withOpacity(0.5)
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.orangeAccent,
                          size: 21,
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Row(
                    children: [
                      Text('Your Exercises',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 20,
                          //fontWeight: FontWeight.w700,
                        ),
                      ),

                      Expanded(child: Container()),

                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Exercise()));
                        },
                        child:Text('To Continue',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 191, 255, 1),
                            //fontWeight: FontWeight.w700,
                          ),

                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward,
                          color: Colors.orangeAccent,
                          size: 20),
                    ],
                  ),
                ),
                SizedBox(height: 35),

                ClipRRect(
                  child: Container(
                    height: 230,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('img/pic.png'),
                        fit: BoxFit.fill
                      ),
                    ),
                  child: Container(
                    padding: const EdgeInsets.only(left:20, top: 20,right: 28 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Time to Find Your Mental Health Condition!!',
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
                        Text('By Pressing Start ',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 22,
                              color: Colors.white,
                            )
                        ),

                        SizedBox(height: 5),

                        Text('Button Begin the Process',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 22,
                              color: Colors.white,
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

                              child: Text('Start',
                                style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,),
                              ),

                              //Action Listener
                              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmotionSelection()));},
                            ),
                          ],
                        ),
                      ],


                    ),
                  ),
                ),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
