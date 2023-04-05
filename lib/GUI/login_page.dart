import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/quickalert.dart';

import '../forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key,required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // ignore: use_build_context_synchronously
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: 'Logged In Successfully!',
        confirmBtnColor: Colors.orangeAccent,
      );
    }catch(e){
      // ignore: use_build_context_synchronously
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        text: 'Something went wrong Check your email and password and try again\n'
            'else try forget password',
        confirmBtnColor: Colors.orangeAccent,
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: SafeArea(
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
                  SizedBox(height: 10),
                  Text(
                      "Happy To Have Here..!!",
                      style: GoogleFonts.pacifico(
                        fontSize: 34,
                        color: Colors.greenAccent[200],
                      )
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Your personal information will keep encrypted",
                      style: GoogleFonts.greatVibes(
                          fontSize : 24)
                  ),
                  SizedBox(height: 35),

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
                                text: 'Age field is must',
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
                              );
                            }
                          },


                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  // Forget Password

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ForgotPasswordPage();
                              },
                              ),);

                            },
                            child: Text(
                              'Forget Password',
                              style: TextStyle(color : Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]
                    ),
                  ),

                  SizedBox(height: 10),
                  //Sign Up Button
                  SizedBox(
                    width: 360,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {signIn();},
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
                      child: Text('Sign In ', style: GoogleFonts.roboto(
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
                          'Not Registered Yet! ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: widget.showRegisterPage,
                          child: Text(
                            'Register Now? ..',
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
      ),
    );
  }
}
