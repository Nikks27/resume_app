import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

TextEditingController email=TextEditingController();
TextEditingController phone=TextEditingController();
TextEditingController address=TextEditingController();
Map introduction={};

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffEFF6FF),
            appBar: AppBar(backgroundColor: Color(0xffEFF6FF),
              leading: Row(
                children: [
                  SizedBox(width: 10,),
                  InkWell(
                      onTap:
                          () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),

                ],
              ),
              actions: [
                SizedBox(width: 40,),
                Text("Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),SizedBox(width: 80),
                Text("Contact",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                Spacer(),
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text('E-Mail',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
                          hintText: 'admin@gmail.com'
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text('Phone',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      controller: phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
                          hintText: '+91 ********96'
                      ),

                    ),
                  ), SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text('Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      controller: address,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
                        hintText: '129,laxminagar sociyti dindoli surat',
                      ),

                    ),
                  ),
                  SizedBox(height: 350),
                  Container(height: 60,width: 200,
                    child: InkWell(onTap:
                        () {
                      Navigator.pushNamed(context, '/skill');
                      introduction = {
                        'name':email,
                        'birthday':phone,
                        'personalstatement':address,
                      };
                    },
                        child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                        )
                        )
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade400),)
                ],
              ),
            ),
          ),
        )
    );
  }
}