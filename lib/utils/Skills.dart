import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

TextEditingController communications = TextEditingController();
Map introduction = {};

class _SkillsState extends State<Skills> {
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
                  "Skills",
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
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Column(
                      children: List.generate(
                    controllerlist.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: skill_textfild(index),
                      );
                    },
                  )),
                ],
              ),
            ),
            floatingActionButton: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                width: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/education');
                      introduction = {
                        'name': communications,
                      };
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
              ),
            ),
          ),
        ));
  }

  SizedBox skill_textfild(int index) {
    return SizedBox(
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 300,
            child: TextField(
              controller: controllerlist[index],
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: 'communications',
              ),
            ),
          ),
          SizedBox(width: 5),
          InkWell(
              onTap: () {
                setState(() {
                  TextEditingController controller =
                      TextEditingController(text: 'hello');
                  controllerlist.add(controller);
                });
              },
              child: Icon(
                Icons.add,
                size: 33,
                color: Colors.black,
              )),
          SizedBox(width: 5),
          IconButton(
              onPressed: () {
                setState(() {
                  controllerlist.removeAt(index);
                });
              },
              icon: Icon(
                Icons.delete,
                size: 33,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}

TextEditingController controller = TextEditingController(text: 'hello');
List<TextEditingController> controllerlist = [controller];
