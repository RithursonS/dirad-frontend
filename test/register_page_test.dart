import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_dirad/GUI/register_page.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockFirebaseFirestore mockFirebaseFirestore;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockFirebaseFirestore = MockFirebaseFirestore();
  });

  testWidgets('Register button calls createUserWithEmailAndPassword',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: RegisterPage(
              showLoginPage: () {},
            ),
          ),
        );

        // Enter some text into the text fields
        await tester.enterText(find.byType(TextFormField).at(0), 'test@gmail.com');
        await tester.enterText(find.byType(TextFormField).at(1), 'password');
        await tester.enterText(find.byType(TextFormField).at(2), 'password');
        await tester.enterText(find.byType(TextFormField).at(3), 'John');
        await tester.enterText(find.byType(TextFormField).at(4), 'Doe');
        await tester.enterText(find.byType(TextFormField).at(5), '25');

        // Tap the register button
        await tester.tap(find.text('Register'));
        await tester.pumpAndSettle();

        // Verify that the createUserWithEmailAndPassword method was called once
        verify(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: 'test@gmail.com',
          password: 'password',
        )).called(1);
      });

  testWidgets('Register button calls addUserDetails', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: RegisterPage(
          showLoginPage: () {},
        ),
      ),
    );

    // Enter some text into the text fields
    await tester.enterText(find.byType(TextFormField).at(0), 'test@gmail.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password');
    await tester.enterText(find.byType(TextFormField).at(2), 'password');
    await tester.enterText(find.byType(TextFormField).at(3), 'John');
    await tester.enterText(find.byType(TextFormField).at(4), 'Doe');
    await tester.enterText(find.byType(TextFormField).at(5), '25');

    // Tap the register button
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle();

    // Verify that the addUserDetails method was called once
    verify(mockFirebaseFirestore.collection('users').add({
      'first name': 'John',
      'last name': 'Doe',
      'email': 'test@gmail.com',
      'age ': 25,
    })).called(1);
  });
}

