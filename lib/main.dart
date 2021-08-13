import 'package:flutter/material.dart';
import 'package:security_app/bottomNav_Pages/bottom_navigation.dart';
import 'package:security_app/screen/Phone_input_page.dart';
import 'package:security_app/bottomNav_pages/home_page.dart';
import 'package:security_app/screen/signIn_page.dart';
import 'package:security_app/screen/intro_page.dart';
import 'package:security_app/screen/signUp_page.dart';
import 'package:security_app/screen/phone_verification_page.dart';
import 'package:security_app/screen/signin_signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: IntroPage.id,
        routes: {
          IntroPage.id: (context) => IntroPage(),
          SignInPage.id: (context) => SignInPage(),
          PhoneInputPage.id: (context) => PhoneInputPage(),
          PhoneVerificationPage.id: (context) => PhoneVerificationPage(),
          SignUpPage.id: (context) => SignUpPage(),
          HomePage.id: (context) => HomePage(),
          MyBottomNavigation.id: (context) => MyBottomNavigation(),
          SignInSignUpPage.id: (context) => SignInSignUpPage(),
        });
  }
}
