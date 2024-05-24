import 'package:flutter/material.dart';
import 'package:resume_app/utils/pdf.dart';

import 'Contact.dart';
import 'DetailScreen.dart';
import 'Education.dart';
import 'Experience.dart';
import 'Hobbies.dart';
import 'Languages.dart';
import 'ParsonDetails.dart';
import 'Skills.dart';
import 'SplashScreen.dart';


class Resume extends StatelessWidget {
  const Resume({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => splashscreen(),
        '/details' : (context) => Detailscreen(),
        '/parson' : (context) => Person_Details(),
        '/skill' : (context) => Skills(),
        '/education' : (context) => Education(),
        '/experience' : (context) => Experience(),
        '/contact' : (context) => Contact(),
        '/hobbies' : (context) => hobbies(),
        '/languages' : (context) => languages(),
        '/pdf' : (context) => Pdf(),
      },
    );
  }
}
