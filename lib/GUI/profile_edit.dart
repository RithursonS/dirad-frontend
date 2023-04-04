import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:frontend_dirad/GUI/get_user.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {



  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();

  final userMail = FirebaseAuth.instance.currentUser!.email!;
  final userUid = FirebaseAuth.instance.currentUser!.uid;


  static String firstName = "";
  String lastName = "";
  int age= 0;

  Future<void> getUserDetails(String email) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
      firstName = documentSnapshot.get('first name');
      lastName = documentSnapshot.get('last name');
      age = documentSnapshot.get('age ');

      // Do something with the user details...
      print('First Name: $firstName');
      print('Last Name: $lastName');
      print('Age: $age');
    } else {
      // Handle the case where the user is not found...
      print('User not found for email: $email');
    }
  }

  Future<void> updateUserDetails() async {
    DocumentReference documentReference =
    FirebaseFirestore.instance.collection('users').doc(userUid);

    await documentReference.update({
      'first name': _firstNameController.text.trim(),
      'last name': _lastNameController.text.trim(),
      'age': int.parse(_ageController.text.trim()),
    });

    // Update the local variables with the new values
    firstName = _firstNameController.text.trim();
    lastName = _lastNameController.text.trim();
    age = int.parse(_ageController.text.trim());

    // Print the updated values
    print('First Name: $firstName');
    print('Last Name: $lastName');
    print('Age: $age');
  }



  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      ///backgroundColor:  Color.fromRGBO(255, 224, 204,1),
      ///230, 230, 230
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text('Profile', style: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        actions: [IconButton(onPressed: () {}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))],
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 15,),
                /// -- IMAGE
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CircleAvatar(
                              radius: 50,
                              child: const Image(image: AssetImage("img/doc3.jpg")))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.greenAccent),
                        child: const Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text('Profile', style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                Text('Profile Sub ', style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                const SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Text('First Name :', style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                ),

                //First Name Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230,230,230,1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: FutureBuilder(
                        future: getUserDetails(userMail),
                        builder: (context, snapshot){
                          return TextFormField(
                            controller: _firstNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '${firstName}',
                              prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                            ),

                          );
                        },

                      ),
                    ),

                  ),

                ),

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Text('Last Name :', style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                ),

                //Last Name Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230,230,230,1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: FutureBuilder(
                        future: getUserDetails(userMail),
                        builder: (context, snapshot){
                          return TextFormField(
                            controller: _lastNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '${lastName}',
                              prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                            ),

                          );
                        },

                      ),
                    ),

                  ),

                ),

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Text('Age :', style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                ),

                //Age Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230,230,230,1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: FutureBuilder(
                        future: getUserDetails(userMail),
                        builder: (context, snapshot){
                          return TextFormField(
                            controller: _ageController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '${age}',
                              prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                            ),

                          );
                        },

                      ),
                    ),

                  ),

                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Text('Email:', style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230,230,230,1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: FutureBuilder(
                        future: getUserDetails(userMail),
                        builder: (context, snapshot){
                          return TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '${userMail}',
                              prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                            ),

                          );
                        },

                      ),
                    ),

                  ),

                ),
                SizedBox(height: 20),
                //Sign Up Button
                SizedBox(
                  width: 360,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {updateUserDetails();},
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
                    child: Text('Edit Details ', style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only( right: 20, top: 25),
                  child: Row(
                    children: [
                      Text('Thanks For Being with Us! ', style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
