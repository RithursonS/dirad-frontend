import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  Future frontend_dirad() async{
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
                        validator: (val){
                          if(val==null){
                            return "Last name field must Entered";
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
                        validator: (val){
                          if(val==null){
                            return "Last name field must Entered";
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
                        validator: (val){
                          if(val==null){
                            return "Age must Entered";
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
                          return RegExp(r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+0[a-zA-Z0-9]+\.[a-zA-z]+").hasMatch(val!)? null : "Please Enter Valid Email";
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
                            return "Enter a Password tha contains more than 6 characters";
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
                            return "Password should be at least 6 characters";
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
                    onPressed: () {frontend_dirad();},
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