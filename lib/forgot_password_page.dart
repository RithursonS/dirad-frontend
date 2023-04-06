

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({ Key? key }): super(key: key);
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  //password Reset method
  Future passwordReset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
      // ignore: use_build_context_synchronously
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: 'Password sent Successfully',
        confirmBtnColor: Colors.orangeAccent,
      );

    } on FirebaseAuthException catch(e){print(e);
    // ignore: use_build_context_synchronously
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      text: 'Check Your Email Address And Try Again',
      confirmBtnColor: Colors.orangeAccent,
    );
    }
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        ///elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              height: 250,
              width: 250,
              child: Image.asset("img/forgetPassword.png"),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 10),
            child: Text(
                "Enter the email Address below to reset your password for a new one",
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                    fontSize: 22)
            ),
          ),
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
                    prefixIcon: Icon(Icons.person,color: Colors.orangeAccent,),
                  ),
                  validator: (val){
                    return RegExp(r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+0[a-zA-Z0-9]+\.[a-zA-z]+").hasMatch(val!)? null : "Please Enter Valid Email";
                  },

                ),
              ),

            ),

          ),
          MaterialButton(onPressed: passwordReset,
            color: Colors.orangeAccent,
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}