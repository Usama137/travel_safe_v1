import 'package:flutter/material.dart';
import 'package:travelsafev1/components/constants.dart';
import 'package:travelsafev1/components/tracking_text_input.dart';
import 'package:travelsafev1/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';

class TravelerSignUp extends StatefulWidget {
  static const String id='travelerSignup_screen';
  @override
  _TravelerSignUpState createState() => _TravelerSignUpState();
}

class _TravelerSignUpState extends State<TravelerSignUp> {


  String name;
  String phone;
  String emergencyContact;
  String email;
  String address;



  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: roundButtonColorBlu,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Form(

            child: Column(key: _formKey,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "Register Traveler",
                    style: TextStyle(
                      fontSize: 33.0,
                      fontFamily: 'Pacifico',
                      color: Colors.white,

                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TrackingTextInput(
                  label: "Name",
                  hint: "What's your name?",
                  labelColor: Colors.white,
                  labelSize: 20,
                  borderColor: Colors.white,
                  onTextChanged: (String value) {
                    name = value;
                    print(name);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TrackingTextInput(
                  label: "Phone",
                  hint: "Write your contact?",
                  labelColor: Colors.white,
                  labelSize: 20,
                  borderColor: Colors.white,
                  onTextChanged: (String value) {
                    phone = value;
                    print(phone);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TrackingTextInput(
                  label: "Emergency Contact",
                  hint: "Write emergency contact",
                  labelColor: Colors.white,
                  labelSize: 20,
                  borderColor: Colors.white,
                  onTextChanged: (String value) {
                    emergencyContact= value;
                    print(emergencyContact);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TrackingTextInput(
                  label: "Email",
                  hint: "Write your email.",
                  labelColor: Colors.white,
                  labelSize: 20,
                  borderColor: Colors.white,
                  onTextChanged: (String value) {
                    email= value;
                    print(email);
                  },
                ),

                SizedBox(
                  height: 20.0,
                ),
                TrackingTextInput(
                  label: "Address",
                  hint: "Write your home address",
                  labelColor: Colors.white,
                  labelSize: 20,
                  borderColor: Colors.white,
                  onTextChanged: (String value) {
                    address = value;
                    print(address);
                  },
                ),


                SizedBox(
                  height: 20.0,
                ),


                RoundedButton(
                  title: 'Submit Credentials',
                  textColor: roundButtonColorBlu,
                  colour: Colors.white,
                  onPressed: () {
                    // Validate returns true if the form is valid, otherwise false.
                    if (/*_formKey.currentState.validate()*/ name!=null && phone!=null && emergencyContact!=null && email!=null && address!=null ) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a databa
                      print(name);

                      //create Record function call here
                      //createRecord();
                      /*  Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));*/
                    } else {
                      print("something is missing");
                      showDialog(context: context,
                        child: CupertinoAlertDialog(
                          title: Text("Alert!",
                            style: TextStyle(
                              color: Colors.red,
                            ),),
                          content: Text("Credentials are missing",
                            style: TextStyle(
                              fontSize: 15.0,

                            ),),
                          actions: <Widget>[
                            // usually buttons at the bottom of the dialog
                            new FlatButton(
                              child: new Text("Close"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],

                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                /* RaisedButton(
                  child: Text('Create Record'),
                  onPressed: () {
                    createRecord();
                  },
                ),*/
              ],
            ),
          ),
        ),
      ),




    );
  }
}
