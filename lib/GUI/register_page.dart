import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({ Key? key, required this.showLoginPage }): super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPage();
}
class _RegisterPage extends State<RegisterPage> {



  final _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  final _conformPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();

  Future signUp() async{
    if (passwordConfirmed()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),


      );
      addUserDetails(
          _firstNameController.text.trim(),
          _lastNameController.text.trim(),
          _emailController.text.trim(),
          int.parse(_ageController.text.trim()));//int.parse(_ageController.text.trim())
    }

  }



  Future addUserDetails(String firstName,String lastName,String email,int age,) async{
    await FirebaseFirestore.instance.collection('users').add({
      'first name':firstName ,
      'last name': lastName,
      'email': email,
      'age ': age,

    });
  }


  bool passwordConfirmed(){
    if(_passwordController.text.trim()==_conformPasswordController.text.trim()){
      return true;
    } else{
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        text: 'Password aren\'t match',
      );
      return false;
    }
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _conformPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 250,
                    width: 250,
                    child: Image.asset("img/logo.png"),
                  ),

                ),
                SizedBox(height: 25),
                Text(
                    "Happy Pills!!",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 52,
                    )
                ),
                SizedBox(height: 10),
                Text(
                    "You can Register Here...",
                    style: TextStyle(
                        fontSize : 20)
                ),
                SizedBox(height: 35),

                //First Name Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First Name',
                          prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                        ),
                        onChanged: (val){
                          if(val==null){
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'First Name field is must',
                              confirmBtnColor: Colors.orangeAccent,
                            );
                          }
                        },
                      ),
                    ),

                  ),

                ),

                SizedBox(height: 10),

                //Last Name Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last Name',
                          prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                        ),
                        onChanged: (val){
                          if(val==null){
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'Last Name field is must',
                              confirmBtnColor: Colors.orangeAccent,
                            );
                          }
                        },

                      ),
                    ),

                  ),

                ),

                SizedBox(height: 10),

                //Age Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Age',
                          prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                        ),
                        onChanged: (val){
                          if(val==null){
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'Age field is must',
                              confirmBtnColor: Colors.orangeAccent,
                            );
                          }
                        },

                      ),
                    ),

                  ),

                ),

                SizedBox(height: 10),

                //Email Text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.mail_rounded,color: Colors.orangeAccent,),
                        ),
                        validator: (val){
                          if(EmailValidator.validate(val!) == true){
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'Email field is must',
                              confirmBtnColor: Colors.orangeAccent,
                            );
                          };

                        },

                      ),
                    ),

                  ),

                ),

                SizedBox(height: 10),

                //Password Text Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.password_outlined,color: Colors.orangeAccent,),
                        ),
                        validator: (val){
                          if(val!.length<6){
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'Password field is must',
                              confirmBtnColor: Colors.orangeAccent,
                            );
                          }
                        },


                      ),
                    ),
                  ),
                ),


                SizedBox(height: 10),

                //Conform Password Text Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _conformPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Conform the Password',
                          prefixIcon: Icon(Icons.password_rounded,color: Colors.orangeAccent,),
                        ),
                        validator: (val){
                          if(!(val==_passwordController)){
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'Password field is must',
                              confirmBtnColor: Colors.orangeAccent,
                            );
                          }
                        },

                      ),
                    ),
                  ),
                ),


                SizedBox(height: 10),
                //Sign Up Button
                SizedBox(
                  width: 360,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {signUp();},
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
                    child: Text('Sign Up ', style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an Account Already! ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: Text(
                          'Lets Login Now? ..',
                          style: TextStyle(color : Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}