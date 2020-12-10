import 'package:flutter/material.dart';
import 'package:travelsafev1/components/constants.dart';
import 'package:travelsafev1/components/tracking_text_input.dart';
import 'package:travelsafev1/components/rounded_button.dart';
import 'package:travelsafev1/screens/traveler_signup.dart';

class TravelerLogin extends StatefulWidget {
  static const String id = 'TravelerLogin_screen';
  @override
  _TravelerLoginState createState() => _TravelerLoginState();
}

class _TravelerLoginState extends State<TravelerLogin> {

  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: roundButtonColorBlu,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 35),
                      child: Text(
                        'Log In.',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 47.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 40, right: 40, top: 70),
                      child: TrackingTextInput(
                        label: "Email",
                        labelColor: Colors.white,
                        labelSize: 28,
                        //colour: Colors.white,
                        //hintColor: Colors.white,
                        borderColor: Colors.white,

                        onTextChanged: (String value) {
                          email = value;
                        },
                      ),
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.only(left: 40, right: 40, top: 30),
                      child: TrackingTextInput(
                        label: "Password",
                        labelColor: Colors.white,
                        labelSize: 28,

                        isObscured: true,
                        borderColor: Colors.white,
                        suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white,

                        ),
                        //colour: Colors.white,

                        onTextChanged: (String value) {
                          password = value;

                        },

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: RoundedButton(
                        title: 'Log In',
                        colour: Colors.white,
                        textColor: roundButtonColorBlu,
                        onPressed: (){
                          //Navigator.pushNamed(context, Menu.id);
                        },

                      ),
                    ),


                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child:InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, TravelerSignUp.id);
                          },
                          child: Text(
                            'New User? Create account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),




    );
  }
}
