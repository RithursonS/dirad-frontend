import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentScreenFour extends StatelessWidget {
  const AppointmentScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/doc4.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepOrangeAccent.withOpacity(0.9),
                      Colors.deepOrangeAccent.withOpacity(0),
                      Colors.deepOrangeAccent.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30,right: 10,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap:(){},
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white10,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ),

                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white10,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ]
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Patient',
                                style: GoogleFonts.adventPro(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text('2.3K',
                                style: GoogleFonts.adventPro(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Experience',
                                style: GoogleFonts.adventPro(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text('10 Years',
                                style: GoogleFonts.adventPro(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Rating',
                                style: GoogleFonts.adventPro(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text('4.9/5.0',
                                style: GoogleFonts.adventPro(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
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
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dr Seleana',
                    style: GoogleFonts.adventPro(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(
                        Icons.monitor_heart,
                        color: Colors.red,
                        size: 28,
                      ),
                      SizedBox(width: 5,),
                      Text('Therapist',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('To contribute to the mental well-being of young adults struggling '
                      'with alcohol and drug abuse and recovery through clinical studies and in-person counseling sessions in my home province of Colombo.',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10,),
                  Text('Available Date',
                    style: GoogleFonts.adventPro(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 15,),

                  TableCalendar(
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(2023),
                    lastDay: DateTime(2024),
                    calendarFormat: CalendarFormat.week,
                    daysOfWeekVisible: false,
                    headerVisible: false,
                    calendarStyle: CalendarStyle(
                      weekendDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.greenAccent),
                      ),
                      defaultDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.greenAccent),
                      ),
                      todayDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Text('Available Time',
                    style: GoogleFonts.adventPro(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  Container(
                    height: 50,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return InkWell(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical:5),
                            decoration: BoxDecoration(
                                color: index==1 ? Colors.greenAccent: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.greenAccent,
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                  ),
                                ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${index+8}: .00',
                                  style: GoogleFonts.adventPro(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: index==1 ? Colors.white70: Colors.black.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
                  //Bokking Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child:SizedBox(
                      width: 360,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.success,
                            text: 'Your Booking Has Been Conformed Please Check '
                                'on the Booking History',
                            confirmBtnColor: Colors.orangeAccent,
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>( Colors.orangeAccent),
                          backgroundColor: MaterialStateProperty.all<Color>( Colors.orangeAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.orangeAccent)
                            ),
                          ),
                        ),
                        child: Text('Book Appointment ', style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}