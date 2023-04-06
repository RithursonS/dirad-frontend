import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_dirad/GUI/doctor_selection.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

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

  final catoNames=[
    'Colombo',
    'Kandy',
    'Galle',
    'Trincomalee',
    'Gampaha'
  ];

  final catoIcons=[
    Icon(Icons.medication_liquid),
    Icon(Icons.medication_liquid),
    Icon(Icons.medication_liquid),
    Icon(Icons.medication_liquid),
    Icon(Icons.medication_liquid),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: SingleChildScrollView(
          child: Column(
              children: [
                  Container(

                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // A green area
                          // Image of the user and EDit option
                          Container(
                            // Image of the user and EDit option
                              child: Padding(
                                padding: const EdgeInsets.only(top: 60,right: 20,left: 20),
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
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

                                      Container(
                                      height: 80,
                                      width: 80,
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 4),
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                ]
                                            ),
                                          ),
                                        ),
                                      )
                                    ]
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20,left:20,top:15),
                            child: ClipRRect(
                              child: Container(
                                height: 230,
                                width: 380,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('img/booking1.png'),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                            child: Container(
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Search Bar
                                    Container(
                                      margin: EdgeInsets.only(top:15,bottom: 20,right: 20,left:20),
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
                                              blurRadius: 2,
                                              //spreadRadius: 2,
                                            )
                                          ]

                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Search Here For the doctor',
                                            hintStyle: TextStyle(
                                                color: Colors.black12.withOpacity(0.7)
                                            ),
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Colors.orangeAccent,
                                              size: 21,
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //Catogory Text
                          Padding(
                              padding: EdgeInsets.only(left: 15, top: 20),
                              child: Text(
                                'Locations',
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                          ),

                          SizedBox(height: 10,),
                          Container(
                              height: 100,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: catoNames.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                                        height: 60,
                                        width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                              shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(191, 191, 191, 0.9),
                                                  blurRadius: 4,
                                                  spreadRadius: 2,
                                              )
                                            ]
                                          ),
                                        child: Center(
                                          child: catoIcons[index],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        catoNames[index],
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54.withOpacity (0.7),
                                        ),

                                      ), // Text
                                    ],

                                  );
                                },

                              )
                          ),
                          SizedBox(height: 10,),
                          Padding(
                              padding:  EdgeInsets.only (left: 15),
                            child: Text(
                                'Doctors Recommended',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          DoctorSelection(),
                        ],
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
