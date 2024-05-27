import 'package:flutter/material.dart';

import 'Hobbies.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

TextEditingController txtInstitude = TextEditingController();
TextEditingController txtStart_Year = TextEditingController();
TextEditingController txtEnd_Year = TextEditingController();
TextEditingController txtDigree_Year = TextEditingController();

Map introduction = {};

class _EducationState extends State<Education> {
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
                    SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                  ],
                ),
                actions: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(width: 100),
                  Text(
                    "Education",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                ],
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 283),
                        child: Text(
                          'Institude ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        controller: txtInstitude,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Rnw',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 280),
                        child: Text(
                          'Start Year',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        controller: txtStart_Year,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: '01/ jan / 2012',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 280),
                        child: Text(
                          'End Year',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        controller: txtEnd_Year,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: '01/ jan / 2015',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Text(
                          'Digree',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        controller: txtDigree_Year,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'B.com',
                        ),
                      ),
                      SizedBox(height: 250),
                      Container(
                        height: 60,
                        width: 200,
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/experience');
                              Institude = txtInstitude.text;
                              Start_Year = txtStart_Year.text;
                              End_Year = txtEnd_Year.text;
                              Digree_Year = txtDigree_Year.text;
                            },
                            child: Center(
                                child: Text(
                              'Continue',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ))),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.brown.shade400),
                      )
                    ],
                  ),
                ),
              )),
        ));
  }
}
String? Institude;
String? Start_Year;
String? End_Year;
String? Digree_Year;
