import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:security_app/constants.dart';
import 'package:security_app/components/Appbutton.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:security_app/screen/signUp_page.dart';

class PhoneVerificationPage extends StatelessWidget {
  static const String id = 'PhoneVerificationPage';
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          automaticallyImplyLeading: false,
          toolbarHeight: 80.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Container(
              child: Text(
            'OTP  VERIFICATION',
            style: kTextStyle.copyWith(
                color: Colors.yellow[800], fontSize: 20.5, letterSpacing: 1.5),
            textAlign: TextAlign.center,
          )),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10.0),
                          Text(
                            'Enter OTP sent to *phone*',
                            style: kTextStyle.copyWith(
                                color: Colors.black54, fontSize: 20.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 60.0),
                          OTPTextField(
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 80,
                            style: TextStyle(fontSize: 17),
                            keyboardType: TextInputType.numberWithOptions(),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Didnt Receive OTP?',
                                textAlign: TextAlign.center,
                                style: kTextStyle.copyWith(
                                    fontSize: 16.0, color: Colors.black45),
                              ),
                              TextButton(
                                child: Text(
                                  'Resend',
                                  style: kTextStyle.copyWith(
                                      fontSize: 16.0,
                                      color: Colors.lightBlueAccent),
                                ),
                                onPressed: () {
                                  //Implement forget password functionality.
                                },
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          RoundedButton(
                            title: 'Verify',
                            color: Colors.black,
                            onpressed: () {
                              //Implement Generate OTP functionality.
                            },
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Or',
                            style: kTextStyle.copyWith(fontSize: 20.0),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Sign in using',
                            style: kTextStyle.copyWith(
                                fontSize: 20.0, color: Colors.black54),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              RoundedButton(
                                title: 'Google',
                                color: Colors.black,
                                onpressed: () {
                                  //Implement login functionality.
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New user?',
                                textAlign: TextAlign.center,
                                style: kTextStyle.copyWith(
                                    fontSize: 16.0, color: Colors.black45),
                              ),
                              TextButton(
                                child: Text(
                                  'Sign Up',
                                  style: kTextStyle.copyWith(
                                      fontSize: 16.0,
                                      color: Colors.lightBlueAccent),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, SignUpPage.id);
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
