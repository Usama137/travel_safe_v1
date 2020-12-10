import 'package:flutter/material.dart';
import 'package:travelsafev1/screens/traveler_signup.dart';
import 'package:travelsafev1/screens/vendor_login.dart';
import 'package:travelsafev1/screens/vendor_signup.dart';
import 'screens/welcome_screen.dart';
import 'screens/traveler_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,


        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          TravelerLogin.id: (context) =>TravelerLogin(),
          VendorLogin.id: (context) => VendorLogin(),
          TravelerSignUp.id: (context) =>TravelerSignUp(),
          VendorSignUp.id:(context) =>VendorSignUp(),


        }

    );
  }
}


