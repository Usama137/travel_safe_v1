import 'package:flutter/material.dart';
import 'package:travelsafev1/components/constants.dart';
import 'package:travelsafev1/components/tracking_text_input.dart';
import 'package:travelsafev1/components/rounded_button.dart';
import 'package:travelsafev1/screens/vendor_signup.dart';

class VendorLogin extends StatefulWidget {
  static const String id = 'VendorLogin_screen';
  @override
  _VendorLoginState createState() => _VendorLoginState();
}

class _VendorLoginState extends State<VendorLogin> {
  String vendorEmail;
  String vendorPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        'Vendor Log In.',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 47.0, color: roundButtonColorBlu),
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
                        label: 'Email',
                        labelColor: roundButtonColorBlu,
                        labelSize: 28,
                        //hint: "Email",
                        //colour: Colors.white,


                        hintColor: roundButtonColorBlu,
                        borderColor: roundButtonColorBlu,

                        onTextChanged: (String value) {
                          vendorEmail = value;
                        },
                      ),
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.only(left: 40, right: 40, top: 30),
                      child: TrackingTextInput(
                        label: "Password",
                        labelColor: roundButtonColorBlu,
                        labelSize: 28,
                        //hintColor: roundButtonColorBlu,

                        isObscured: true,
                        borderColor: roundButtonColorBlu,
                        suffixIcon: Icon(Icons.remove_red_eye, color: roundButtonColorBlu,

                        ),
                        //colour: Colors.white,

                        onTextChanged: (String value) {
                          vendorPassword = value;

                        },

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: RoundedButton(
                        title: 'Log In',
                        colour: roundButtonColorBlu,
                        textColor: Colors.white,
                        onPressed: (){
                          //Navigator.pushNamed(context, Menu.id);
                        },

                      ),
                    ),


                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child:InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, VendorSignUp.id);
                          },
                          child: Text(
                            'New User? Create account',
                            style: TextStyle(
                                color: roundButtonColorBlu,
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
