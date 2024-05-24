import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

TextEditingController communications=TextEditingController();
Map introduction={};


class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Color(0xffEFF6FF),
              appBar: AppBar(backgroundColor: Color(0xffEFF6FF),
                centerTitle: true,
                leading: Row(
                  children: [SizedBox(width: 10),
                    InkWell(onTap:
                        () {
                      Navigator.pop(context);
                    },
                        child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  ],
                ),
                actions: [
                  SizedBox(width: 40,),
                  Text("Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),SizedBox(width: 100),
                  Text("Skills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  Spacer(),
                ],
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            child: TextField(
                              controller: communications,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),hintText: 'communications',
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.add,size: 33,color: Colors.black,),
                          SizedBox(width: 5),
                          Icon(Icons.delete,size: 33,color: Colors.black,),
                        ],
                      ),
                    ),
                    SizedBox(height: 490),
                    InkWell(
                      onTap:
                          () {

                      },

                      child: Container(height: 60,width: 350,
                        child: Center(child: Text('ADD SKILL',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black,width: 2)),),
                    ),
                    SizedBox(height: 15),
                    Container(height: 60,width: 200,
                      child: InkWell(onTap:
                          () {
                        Navigator.pushNamed(context, '/education');
                        introduction = {
                          'name':communications,
                        };
                      },
                          child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),
                          )
                          )
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade400),)
                  ],
                ),
              )
          ),
        )
    );
  }
}