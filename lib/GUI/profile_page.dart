import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:frontend_dirad/GUI/about_us.dart';
import 'package:frontend_dirad/GUI/profile_edit.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Color.fromRGBO(217, 217, 217, 0.7),
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
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 180,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileEdit()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent, side: BorderSide.none, shape: const StadiumBorder()),
                  child: Text('Edit ', style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              ),
              const SizedBox(height: 30),

              const SizedBox(height: 15),


              Container(
                decoration: BoxDecoration(color: Colors.white24,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ]
                ),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orangeAccent,
                    ),
                    child: Icon(
                      LineAwesomeIcons.cog,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  title: Text('Settings' ,
                    style:GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  trailing: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(217, 217, 217, 0.7),
                    ),
                    child:  Icon(LineAwesomeIcons.angle_right,color: Colors.black,size: 20,),
                  ),

                ),
              ),
              SizedBox(height: 13,),
              Container(
                decoration: BoxDecoration(color: Colors.white24,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ]
                ),
                  child:ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.orangeAccent,
                      ),
                      child: Icon(
                        LineAwesomeIcons.user_shield,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    title: Text('Privacy and Policy' ,
                      style:GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(217, 217, 217, 0.7),
                      ),
                      child: Icon(LineAwesomeIcons.angle_right,color: Colors.black,size: 20,),
                    ),

                  ),

              ),

              SizedBox(height: 13,),
              Container(
                decoration: BoxDecoration(color: Colors.white24,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ]
                ),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orangeAccent,
                    ),
                    child: Icon(
                      LineAwesomeIcons.calendar_check,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  title: Text('Appointment History' ,
                    style:GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  trailing: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(217, 217, 217, 0.7),
                    ),
                    child: Icon(LineAwesomeIcons.angle_right,color: Colors.black,size: 20,),
                  ),

                ),
              ),
              SizedBox(height: 13,),
              Container(
                decoration: BoxDecoration(color: Colors.white24,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ]
                ),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orangeAccent,
                    ),
                    child: Icon(
                      LineAwesomeIcons.alternate_sign_out,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  title: Text('Sign Out' ,
                      style:GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                  ),

                  trailing: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(217, 217, 217, 0.7),
                    ),
                    child: Icon(LineAwesomeIcons.angle_right,color: Colors.black,size: 20,),
                  ),
                  onTap: (){
                    FirebaseAuth.instance.signOut();
                  },

                ),
              ),
              SizedBox(height: 13,),
              Container(
                decoration: BoxDecoration(color: Colors.white24,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ]
                ),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orangeAccent,
                    ),
                    child: Icon(
                      LineAwesomeIcons.info_circle,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  title: Text('About Us' ,
                    style:GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  trailing: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(217, 217, 217, 0.7),
                    ),
                    child: Icon(LineAwesomeIcons.angle_right,color: Colors.black,size: 20,),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUs()));
                  },
                ),
              ),
              /// -- MENU
              /**ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: () {}),
              ProfileMenuWidget(title: "Billing Details", icon: LineAwesomeIcons.wallet, onPress: () {}),
              ProfileMenuWidget(title: "User Management", icon: LineAwesomeIcons.user_check, onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Information", icon: LineAwesomeIcons.info, onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: const TextStyle(fontSize: 20),
                      content: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Are you sure, you want to Logout?"),
                      ),
                      confirm: Expanded(
                        child: ElevatedButton(
                          onPressed: () => AuthenticationRepository.instance.logout(),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, side: BorderSide.none),
                          child: const Text("Yes"),
                        ),
                      ),
                      cancel: OutlinedButton(onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),**/
            ],
          ),
        ),
      ),

    );
  }
}
