import 'package:flutter/material.dart';
import 'package:security_app/components/Appbutton.dart';
import 'package:security_app/constants.dart';
import 'package:security_app/screen/Phone_input_page.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'SignUpPage';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  final TextEditingController controller = TextEditingController();
  final String initialCountry = 'NG';
  final PhoneNumber number = PhoneNumber(isoCode: 'NG');

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
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 18.0),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text('Create Account'),
                              SizedBox(height: 12),
                              Container(child: Column(children: [
                                TextField(
                                textInputAction: TextInputAction.next,
                                textAlign: TextAlign.center,
                                decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'First Name',
                                  prefixIcon: Icon(Icons.person,color: Colors.yellow[800],),
                                ),
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                textAlign: TextAlign.center,
                                decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Last Name',
                                  prefixIcon: Icon(Icons.person,color: Colors.yellow[800],),
                                ),
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child: InternationalPhoneNumberInput(
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
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.email, color: Colors.yellow[800],),
                                ),
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                              ),
                              SizedBox(height: 10.0),
                              TextFormField(
                                validator: (value) =>
                                    value!.length < 6 ? 'Password too short.' : null,
                                obscureText: _obscureText,
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Password',
                                  prefixIcon: Icon(Icons.lock, color: Colors.yellow[800],),
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
                              ],),),
                              SizedBox(height: 10.0),
                              RoundedButton(
                                title: 'Sign Up',
                                color: Colors.black,
                                onpressed: () {
                                  //Implement login functionality.
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.0),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text(
                            'Or',
                            style: kTextStyle.copyWith(fontSize: 20.0),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Sign In using',
                            style: kTextStyle.copyWith(
                                fontSize: 20.0, color: Colors.black54),
                          ),
                        ],),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        child: Row(
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
                      ),
                      ],
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
