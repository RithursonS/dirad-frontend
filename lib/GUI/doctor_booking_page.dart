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
      backgroundColor: Color.fromRGBO(217, 217, 217, 0.7),

    );
  }
}
