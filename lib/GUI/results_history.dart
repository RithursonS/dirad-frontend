import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultHistory extends StatefulWidget {
  const ResultHistory({Key? key}) : super(key: key);

  @override
  State<ResultHistory> createState() => _ResultHistoryState();
}

class _ResultHistoryState extends State<ResultHistory> {


  final userMail = FirebaseAuth.instance.currentUser!.email!;

  List<String> results = [];

  Future<void> getUserDetails(String email) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('results')
        .where('email', isEqualTo: email)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
      String result = documentSnapshot.get('result');
      results.add(result);


      // Do something with the user details...
      print('First Name: $result');

    } else {
      // Handle the case where the user is not found...
      print('User not found for email: $email');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
