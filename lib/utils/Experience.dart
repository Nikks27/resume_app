import 'package:flutter/material.dart';

import 'Hobbies.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

TextEditingController txtCompany = TextEditingController();
TextEditingController txtPosition = TextEditingController();
TextEditingController txtStarting = TextEditingController();
TextEditingController txtEnding = TextEditingController();
Map introduction = {};

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffEFF6FF),
            appBar: AppBar(
              backgroundColor: Color(0xffEFF6FF),
              centerTitle: true,
              leading: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              actions: [
                SizedBox(width: 30),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 40),
                Text(
                  'Experience',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text(
                      'Company',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: txtCompany,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Relaince',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 290),
                    child: Text(
                      'Position',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: txtPosition,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Maneger',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Text(
                      'Starting',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: txtStarting,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: '01 / jan / 2022',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 300,
                    ),
                    child: Text(
                      'Ending',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: txtEnding,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: '01 / jan / 2024',
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 60,
                    width: 200,
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/hobbies');
                          Company = txtCompany.text;
                          Position = txtPosition.text;
                          Starting = txtStarting.text;
                          Ending = txtEnding.text;
                        },
                        child: Center(
                            child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ))),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.brown.shade400),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

String? Company;
String? Position;
String? Starting;
String? Ending;
