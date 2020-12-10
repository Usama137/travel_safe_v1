import 'package:flutter/material.dart';
import 'package:travelsafev1/components/rounded_button.dart';
import 'package:travelsafev1/components/constants.dart';
import 'package:travelsafev1/screens/traveler_login.dart';
import 'package:travelsafev1/screens/vendor_login.dart';




class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,

        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/welcome1.jpg", ),


            fit: BoxFit.cover,

          ),
        ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

               Text("Travel Safe",
               style: TextStyle(
                 color: roundButtonColorBlu,
                 fontFamily: 'Pacifico',
                 fontSize: 44
               ),

               ),

               Center(
                 child: Text("Live life with no excuses, travel with no regret.",
                   style: TextStyle(
                       color: roundButtonColorBlu,
                       fontFamily: 'Pacifico',
                       fontSize: 18
                   ),

                 ),
               ),

               SizedBox(
                 height: 50,
               ),

               RoundedButton(
                 title: 'Traveler',
                 colour: roundButtonColorBlu,
                 textColor: Colors.white,
                 onPressed: (){
                  Navigator.pushNamed(context, TravelerLogin.id);
                 },
               ),

               RoundedButton(
                 title: 'Vendor',
                 colour: roundButtonColorBlu,
                 textColor: Colors.white,
                 onPressed: (){
                   Navigator.pushNamed(context, VendorLogin.id);
                 },
               ),
             ],



           ),




      )







    );
  }
}
