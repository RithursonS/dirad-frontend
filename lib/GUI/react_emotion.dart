import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:frontend_dirad/GUI/api_call.dart';
import 'package:frontend_dirad/GUI/result_page.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';


class EmotionReaction extends StatefulWidget {
  const EmotionReaction({Key? key}) : super(key: key);


  static var response;
  @override
  State<EmotionReaction> createState() => _EmotionReactionState();




}

class _EmotionReactionState extends State<EmotionReaction> {



  final _userTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: 1580,
            child: Column(
              children: [
                Padding(
                padding: const EdgeInsets.only(top:30 , right: 15,left: 15, bottom: 10),
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
                          offset: Offset(-8,10),
                          blurRadius: 2,
                          color: Color.fromRGBO(191, 191, 191, 0.9),
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
                            image: AssetImage('img/therapy3.jpeg'),
                            fit: BoxFit.fill
                        ),
                      ),

                    ),
                  ),
                ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(top:30 , right: 15,left: 15, bottom: 10),
                  child: Container(
                    width: 380,
                      height: 480,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ]
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:15, right:15,left: 15),
                      child: Column(
                        children: [
                          Text(
                            'Please type about yourself in the below text box '
                                '(make sure you include the answers for the following question in your description',
                            style: GoogleFonts.adventPro(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Column(
                              children: [
                                Text(
                                    '01. Have you ever experienced a terrible occurrence that has impacted you significantly?',
                                    style: GoogleFonts.adventPro(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),),
                                Text(
                                      '02. Have you ever experienced an ‘attack’ of fear, anxiety, or panic?',
                                      style: GoogleFonts.adventPro(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),),
                                Text(
                                  '03. Do feelings of anxiety or discomfort around others bother you?',
                                  style: GoogleFonts.adventPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Text(
                                  '04. Tell me about your sleeping habits over the past 6 months. Have you noticed any changes? Difficulty sleeping? Restlessness?',
                                  style: GoogleFonts.adventPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Text(
                                  '05. How would you describe your appetite over the past 6 weeks? Have your eating habits changed in any',
                                  style: GoogleFonts.adventPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Text(
                                  '06. Could you tell me about any times over the past few months that you’ve been bothered by low feelings, stress, or sadness?',
                                  style: GoogleFonts.adventPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Text(
                                  '07. How frequently have you had little pleasure or interest in the activities you usually enjoy? Would you tell me more?',
                                  style: GoogleFonts.adventPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Text(
                                  '08. Describe how ‘supported’ you feel by others around you – your friends, family, or otherwise. ',
                                  style: GoogleFonts.adventPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right: 20,left:20),
                    width: MediaQuery.of(context).size.width,
                    height: 700,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(191, 191, 191, 0.9),
                            offset: Offset(-8,10),
                            blurRadius: 1,

                          )
                        ]

                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                    child: TextFormField(
                      controller: _userTextController,

                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type Here',
                          hintStyle: TextStyle(
                              color: Colors.black12.withOpacity(0.5),
                          ),

                      ),
                      keyboardType: TextInputType.multiline,
                       // <-- SEE HERE
                      maxLines: 85, // <-- SEE HERE


                    ),
                  ),
                ),

                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 204, 102, 1)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 204, 102, 1)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.orangeAccent)
                                )
                            )
                        ),

                        child: Text('Submit',
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,),
                        ),
                          onPressed: () async {
                            var user = _userTextController.text;
                            try {
                              QuickAlert.show(
                                context: context,
                                type: QuickAlertType.loading,
                                title: "Loading",
                                text: 'Your Results Is Loading!',
                                confirmBtnColor: Colors.deepOrangeAccent,
                              );
                              EmotionReaction.response = await ClientAPI().postData(user);
                              debugPrint(EmotionReaction.response);
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserResult()));
                              if (EmotionReaction.response == null) return;

                              // handle successful response
                            } catch (e) {
                              debugPrint('Error occurred while sending request: $e');
                              // handle error
                            }
                          }

                        //Action Listener

                      ),
                    ],
                  ),
                ),
             ]
            ),
          ),
        ),
      ),
    );
  }
}
