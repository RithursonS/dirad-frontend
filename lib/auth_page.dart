import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:frontend_dirad/GUI/login_page.dart';
import 'package:frontend_dirad/GUI/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }): super(key: key);
  @override
  State<AuthPage> createState() => _AuthPageState();
}
class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });

  }
  @override
  Widget build (BuildContext context) {
    if(showLoginPage){
      return LoginPage(showRegisterPage: toggleScreens);
    } else {
      return RegisterPage( showLoginPage: toggleScreens);
    }
  }
}