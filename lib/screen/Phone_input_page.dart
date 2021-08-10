import 'package:flutter/material.dart';
import 'package:security_app/components/Appbutton.dart';
import 'package:security_app/constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:security_app/screen/phone_verification_page.dart';
import 'package:security_app/screen/signUp_page.dart';

class PhoneInputPage extends StatelessWidget {
  static const String id = 'PhoneRegistrationPage';
  final TextEditingController controller = TextEditingController();
  final String initialCountry = 'NG';
  final PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                            child: Text(
                          'ENTER YOUR PHONE NUMBER',
                          style: kTextStyle.copyWith(
                            color: Colors.yellow[800],
                              fontSize: 30.0, letterSpacing: 1.5),
                          textAlign: TextAlign.center,
                        )),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'we will send you 4 (four) digit OTP',
                        style: kTextStyle.copyWith(
                            color: Colors.black54, fontSize: 20.0),
                      ),
                      SizedBox(height: 70.0),
                      InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: SelectorConfig(
                          showFlags: true,
                          setSelectorButtonAsPrefixIcon: true,
                          selectorType: PhoneInputSelectorType.DROPDOWN,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: TextStyle(color: Colors.black),
                        initialValue: number,
                        errorMessage: 'Invalid phone number',
                        textFieldController: controller,
                        formatInput: false,
                        inputDecoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter phone number',
                          contentPadding: EdgeInsets.all(20),
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        onSaved: (PhoneNumber number) {
                          print('On Saved: $number');
                        },
                      ),
                      SizedBox(height: 35.0),
                      RoundedButton(
                        title: 'Submit',
                        color: Colors.black,
                        onpressed: () {
                          Navigator.pushNamed(
                              context, PhoneVerificationPage.id);
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
                              //Implement google login functionality.
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
            ),
          ],
        ),
      ),
    );
  }
}
