import 'package:flutter/material.dart';
import 'package:security_app/components/Appbutton.dart';
import 'package:security_app/bottomNav_Pages/bottom_navigation.dart';
import 'package:security_app/constants.dart';
import 'package:security_app/screen/Phone_input_page.dart';
//import 'package:security_app/screen/home_page.dart';
//import 'package:security_app/screen/signUp_page.dart';

class SignInPage extends StatefulWidget {
  static const String id = 'SignInPage';
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool? checkedValue = false;
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 40.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sign in With:',
                              style: kTextStyle.copyWith(
                                  color: Colors.black26, fontSize: 15.0),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 15.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: RoundedButton(
                                          title: 'Google',
                                          color: Colors.black,
                                          onpressed: () {
                                            //Implement login functionality.
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: RoundedButton(
                                          title: 'Phone No',
                                          color: Colors.black,
                                          onpressed: () {
                                            //Implement phone login functionality.
                                            Navigator.pushNamed(
                                                context, PhoneInputPage.id);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 35.0),
                                   Center(
                                      child: Text(
                                         'Or',
                                         style: kTextStyle.copyWith(fontSize: 20.0),
                                       ),
                                       ),
                                ],
                              ),
                            ),
                            
                            SizedBox(height: 25.0),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      child: TextField(
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.center,
                                        textInputAction: TextInputAction.next,
                                        decoration: kTextFieldDecoration.copyWith(
                                          hintText: 'Enter your email',
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Colors.yellow[800],
                                          ),
                                        ),
                                        onChanged: (value) {
                                          //Do something with the user input.
                                        },
                                      ),
                                    ),
                                  ),
                            
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      child: TextFormField(
                                        validator: (value) => value!.length < 6
                                            ? 'Password too short.'
                                            : null,
                                        textAlign: TextAlign.center,
                                        obscureText: _obscureText,
                                        decoration: kTextFieldDecoration.copyWith(
                                          hintText: 'Enter your password',
                                          prefixIcon:
                                              Icon(Icons.lock, color: Colors.yellow[800]),
                                          suffixIcon: TextButton(
                                            onPressed: _toggle,
                                            child: new Text(
                                              _obscureText ? "Show" : "Hide",
                                              style: TextStyle(
                                                color: Colors.yellow[800],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) {
                                          //Do something with the user input.
                                        },
                                      ),
                                    ),
                                  ),
                            
                                  Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: CheckboxListTile(
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            title: Text('Remember Me'),
                                            value: checkedValue,
                                            onChanged: (newValue) {
                                              setState(() {
                                                checkedValue = newValue;
                                              });
                                              //Do something with the user input.
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            child: Text('Forgot Password'),
                                            onPressed: () {
                                              //Implement forget password functionality.
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    child: RoundedButton(
                                      title: 'Sign In',
                                      color: Colors.black,
                                      onpressed: () {
                                        Navigator.pushNamed(
                                            context, MyBottomNavigation.id);
                                        //Implement Google sign in functionality.
                                      },
                                    ),
                                  ),
                            
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: [
                                  //     Text(
                                  //       'Not a Member',
                                  //       textAlign: TextAlign.center,
                                  //       style: kTextStyle.copyWith(
                                  //           fontSize: 16.0, color: Colors.black45),
                                  //     ),
                                  //     TextButton(
                                  //       child: Text(
                                  //         'Sign Up',
                                  //         style: kTextStyle.copyWith(
                                  //             fontSize: 16.0,
                                  //             color: Colors.lightBlueAccent),
                                  //       ),
                                  //       onPressed: () {
                                  //         //Implement sign up functionality.
                                  //         Navigator.pushNamed(context, SignUpPage.id);
                                  //       },
                                  //     )
                                  //   ],
                                  // ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
