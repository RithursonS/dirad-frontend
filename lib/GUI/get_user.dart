import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GetUser extends StatelessWidget {

  final String documentId;
  GetUser({required this.documentId});

  @override
  Widget build(BuildContext context) {




    CollectionReference user = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
        future : user.doc(documentId).get(),
        builder: ((context,snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return data['email'];
          }
          return Text('loading');
        }
        ),
    );
  }
}
