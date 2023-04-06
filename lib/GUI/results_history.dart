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
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                            image: AssetImage('img/resultPage.png'),
                            fit: BoxFit.fill
                        ),
                      ),

                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(255, 204, 102, 1)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(255, 204, 102, 1)),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                      color: Colors.orangeAccent)))),

                      child: Text(
                        'Refresh',
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      //Action Listener
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResultHistory()));
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8,),

              Text("Here You can see Your Test Results",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.orangeAccent
                  )
              ),
              SizedBox(
                height: 2900,
                width: double.infinity,
                child: Column(
                  children: [
                        Expanded(
                        child: FutureBuilder(
                          future: getUserDetails(userMail),
                          builder: (context, snapshot){
                            return ListView.builder(
                              itemCount: results.length,
                              itemBuilder: (context, index){
                                return ListTile(
                                  title: Text(results[index]),
                                );
                              },
                            );
                          },

                        )),
                      ],
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
