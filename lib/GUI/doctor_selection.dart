import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_dirad/GUI/appointment_screen.dart';

class DoctorSelection extends StatefulWidget {
  const DoctorSelection({Key? key}) : super(key: key);

  @override
  State<DoctorSelection> createState() => _DoctorSelectionState();
}

class _DoctorSelectionState extends State<DoctorSelection> {

  final List<String> docNameList= [
    'Dr Mike',
    'DR John',
    'Dr Laser',
    'Dr Lessa'
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      
    );
  }
}


