import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_dirad/doctor_appointment_pages/appointment_screen.dart';

import '../doctor_appointment_pages/appointment2.dart';
import '../doctor_appointment_pages/appointment3.dart';
import '../doctor_appointment_pages/appointment4.dart';

class DoctorSelection extends StatefulWidget {
  const DoctorSelection({Key? key}) : super(key: key);

  @override
  State<DoctorSelection> createState() => _DoctorSelectionState();
}

class _DoctorSelectionState extends State<DoctorSelection> {

  final List<String> docNameList= [
    'Dr Talia',
    'DR Emily',
    'Dr Rihana',
    'Dr Selena'
  ];

  final pages = [
    AppointmentScreen(),
    AppointmentScreenTwo(),
    AppointmentScreenThree(),
    AppointmentScreenFour()
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(217, 217, 217, 0.7),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 340,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column (
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          margin: EdgeInsets.symmetric (horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular (15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(191, 191, 191, 0.9),
                                  blurRadius: 2,
                                  offset: Offset(-8,10),
                                  //spreadRadius: 3,
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => pages[index]
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular (15),
                                        topRight: Radius.circular (15),
                                      ),
                                      child: Image.asset(
                                        "img/doc${index+1}.jpg",
                                        height: 200,
                                        width: 300,
                                        fit: BoxFit.cover,
                                      ),// BorderRadius.only
                                    ), // ClipRRect
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child:Container(
                                      margin: EdgeInsets.all(8),
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(217,217,217, 1),
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(191,191,191, 0.9),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                            ),
                                          ]
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Colors.orangeAccent,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(docNameList[index],
                                      style: GoogleFonts.adventPro(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Therapist',
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 5,),
                                        Text('4.9',
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ]

                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}


