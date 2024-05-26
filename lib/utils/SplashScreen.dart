import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown.shade100,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset("assets/images/cv logo.jpg"),
                ),
                SizedBox(height: 150),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 135, top: 100),
                      child: Container(
                        height: 60,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.brown),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13, left: 28),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed("/details");
                              },
                              child: Text(
                                'START',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ),
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
