import 'package:flutter/material.dart';

class hobbies extends StatefulWidget {
  const hobbies({super.key});

  @override
  State<hobbies> createState() => _hobbiesState();
}

TextEditingController txthobbie = TextEditingController();

Map introduction = {};

class _hobbiesState extends State<hobbies> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffEFF6FF),
            appBar: AppBar(
              backgroundColor: Color(0xffEFF6FF),
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
                  )
                ],
              ),
              actions: [
                SizedBox(width: 40),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 70),
                Text(
                  'Hobbies',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text(
                      'Hobbies',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: TextField(
                      controller: txthobbie,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Music..',
                      ),
                    ),
                  ),
                  SizedBox(height: 590),
                  Container(
                    height: 60,
                    width: 200,
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/languages');
                          hobbie = txthobbie.text;
                        },
                        child: Center(
                            child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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

String? hobbie;
