// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:frontend_dirad/GUI/chat_page.dart';
import 'package:frontend_dirad/GUI/doctor_booking_page.dart';
import 'package:frontend_dirad/GUI/medical_record_page.dart';
import 'package:frontend_dirad/GUI/profile_page.dart';
import 'package:frontend_dirad/GUI/starting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }): super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int index= 0;
  final user = FirebaseAuth.instance.currentUser!;
  final List<String> imgList= [
    'https://www.boldsky.com/img/2020/06/7-1592219040.jpg',
    'https://www.boldsky.com/img/2020/06/1-1592219009.jpg',
    'https://www.boldsky.com/img/2020/06/12-1592219068.jpg',
    'https://www.boldsky.com/img/2020/06/5-1592219031.jpg'
  ];

  final screens =[
    StartPage(),
    RecordPage(),
    BookingPage(),
    ChatPage(),
    Profile_page()
  ];

  @override
  Widget build (BuildContext context) {
    return Scaffold(

      body: screens[index],
        bottomNavigationBar : GNav(
          rippleColor: Colors.white, // tab button ripple color when pressed
          hoverColor: Colors.white, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(color: Colors.white, width: 1), // tab button border
          tabBorder: Border.all(color: Colors.white54, width: 1), // tab button border
          tabShadow: [BoxShadow(color: Colors.white54.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 400), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.orangeAccent, // unselected icon color
          activeColor: Colors.deepOrangeAccent, // selected icon and text color
          iconSize: 35,// tab button icon size
          tabBackgroundColor: Colors.orange.withOpacity(0.2), // selected tab background color
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          selectedIndex: index,
          onTabChange: (index) =>
          setState(()=>this.index=index),
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: 'Home',
            ),
            GButton(
              icon: Icons.cloud_upload_rounded,
              text: 'Records',
            ),
            GButton(
              icon: Icons.medical_services_rounded,
              text: 'Book',
            ),
            GButton(
              icon: Icons.wechat_rounded,
              text: 'Chat',
            ),
            GButton(
              icon: Icons.account_circle_rounded,
              text: 'Profile',
            )
          ],

        )


    );
  }
}