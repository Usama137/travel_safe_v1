import 'package:flutter/material.dart';
import 'package:travelsafev1/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelsafev1/components/rounded_button.dart';
import 'package:travelsafev1/components/tracking_text_input.dart';



class VendorSignUp extends StatefulWidget {
  static const id='vendorSignup_screen';
  @override
  _VendorSignUpState createState() => _VendorSignUpState();
}

class _VendorSignUpState extends State<VendorSignUp> {

  String companyName;
  String vendorPhone;
  String vendorEmail;
  String vendorAddress;

  //for form
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Form(

            child: Column(key: _formKey,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "Register Vendor",
                    style: TextStyle(
                      fontSize: 33.0,
                      fontFamily: 'Pacifico',
                      color: roundButtonColorBlu,

                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TrackingTextInput(
                  label: "Company Name",
                  hint: "What's your company name?",
                  labelColor: roundButtonColorBlu,
                  labelSize: 20,
                  borderColor: roundButtonColorBlu,
                  onTextChanged: (String value) {
                    companyName = value;
                    print(companyName);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TrackingTextInput(
                  label: "Phone",
                  hint: "Write company's contact?",
                  labelColor: roundButtonColorBlu,
                  labelSize: 20,
                  borderColor: roundButtonColorBlu,
                  onTextChanged: (String value) {
                    vendorPhone = value;
                    print(vendorPhone);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),

                TrackingTextInput(
                  label: "Email",
                  hint: "Write your email.",
                  labelColor: roundButtonColorBlu,
                  labelSize: 20,
                  borderColor: roundButtonColorBlu,
                  onTextChanged: (String value) {
                    vendorEmail= value;
                    print(vendorEmail);
                  },
                ),

                SizedBox(
                  height: 20.0,
                ),
                TrackingTextInput(
                  label: "Address",
                  hint: "Write your office address",
                  labelColor: roundButtonColorBlu,
                  labelSize: 20,
                  borderColor: roundButtonColorBlu,
                  onTextChanged: (String value) {
                    vendorAddress = value;
                    print(vendorAddress);
                  },
                ),


                SizedBox(
                  height: 20.0,
                ),


                RoundedButton(
                  title: 'Submit Credentials',
                  textColor: Colors.white,
                  colour: roundButtonColorBlu,
                  onPressed: () {
                    // Validate returns true if the form is valid, otherwise false.
                    if (/*_formKey.currentState.validate()*/ companyName!=null && vendorPhone!=null && vendorEmail!=null && vendorAddress!=null ) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a databa
                      print(companyName);

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
