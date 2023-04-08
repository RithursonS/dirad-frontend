// import 'package:flutter/cupertino.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
// import 'package:frontend_dirad/GUI/login_page.dart';
// import 'package:mockito/mockito.dart';
// import 'package:quickalert/pages/login_page.dart';
//
// void main() {
//   group('LoginPage', () {
//     testWidgets('should show error message for invalid email', (tester) async {
//       // Create a mock Firebase authentication instance
//       final auth = MockFirebaseAuth();
//
//       // Build the LoginPage widget with the mock dependencies
//       await tester.pumpWidget(LoginPage(auth: auth));
//
//       // Enter an invalid email
//       await tester.enterText(find.byKey(Key('email')), 'invalid-email');
//
//       // Tap the sign-in button
//       await tester.tap(find.text('Sign In'));
//       await tester.pump();
//
//       // Verify that an error message is displayed
//       expect(find.text('Please enter a valid email address.'), findsOneWidget);
//     });
//
//     testWidgets('should show error message for short password', (tester) async {
//       // Create a mock Firebase authentication instance
//       final auth = MockFirebaseAuth();
//
//       // Build the LoginPage widget with the mock dependencies
//       await tester.pumpWidget(LoginPage(auth: auth));
//
//       // Enter a short password
//       await tester.enterText(find.byKey(Key('password')), '12345');
//
//       // Tap the sign-in button
//       await tester.tap(find.text('Sign In'));
//       await tester.pump();
//
//       // Verify that an error message is displayed
//       expect(find.text('Password must be at least 6 characters.'), findsOneWidget);
//     });
//
//     testWidgets('should call signInWithEmailAndPassword on valid credentials', (tester) async {
//       // Create a mock Firebase authentication instance
//       final auth = MockFirebaseAuth();
//
//       // Build the LoginPage widget with the mock dependencies
//       await tester.pumpWidget(LoginPage(auth: auth, showRegisterPage: () {  },));
//
//       // Enter valid email and password
//       await tester.enterText(find.byKey(Key('email')), 'test@example.com');
//       await tester.enterText(find.byKey(Key('password')), 'password');
//
//       // Tap the sign-in button
//       await tester.tap(find.text('Sign In'));
//       await tester.pump();
//
//       // Verify that signInWithEmailAndPassword is called with the correct arguments
//       verify(auth.signInWithEmailAndPassword(
//         email: 'test@example.com',
//         password: 'password',
//       )).called(1);
//     });
//   });
// }


