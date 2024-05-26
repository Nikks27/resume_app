import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Contact.dart';

ImagePicker imgpicker = ImagePicker();
File? fileImage, Image;
XFile? xFileImage;

class Person_Details extends StatefulWidget {
  const Person_Details({super.key});

  @override
  State<Person_Details> createState() => _Person_DetailsState();
}

TextEditingController txtname = TextEditingController();
TextEditingController txtbirthday = TextEditingController();
TextEditingController txtpersonal = TextEditingController();

Map introduction = {};

bool istrue = false;

class _Person_DetailsState extends State<Person_Details> {
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
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/persoanldetail');
                    },
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ))),
                Text(
                  'Back',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )
              ],
            ),
            title: Text(
              'Personal',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: (fileImage == null)
                      ? Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.brown.shade800)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Icon(Icons.person,
                                    size: 65, color: Colors.black),
                              ),
                              Text(
                                'photo',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      : CircleAvatar(
                          radius: 70,
                          backgroundImage: (fileImage != null)
                              ? FileImage(fileImage!)
                              : null,
                        ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () async {
                          xFileImage = await imgpicker.pickImage(
                              source: ImageSource.gallery);

                          setState(() {
                            if (xFileImage != null) {
                              fileImage = File(xFileImage!.path);
                            }
                          });
                        },
                        child: Icon(
                          Icons.image,
                          size: 40,
                        )),
                    InkWell(
                        onTap: () async {
                          xFileImage = await imgpicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            if (xFileImage != null) {
                              fileImage = File(xFileImage!.path);
                            }
                          });
                        },
                        child: Icon(Icons.camera_alt_outlined, size: 40))
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    controller: txtname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Naresh Rabari',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    'Birthday',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    controller: txtbirthday,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: '01 / 27 / 2002',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'About me',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    controller: txtpersonal,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText:
                          'I Am Hard-Working individual with a passion...',
                    ),
                  ),
                ),
                SizedBox(height: 150),
                Container(
                  height: 60,
                  width: 200,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                        name = txtname.text;
                        birthday = txtbirthday.text;
                        personal = txtpersonal.text;

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
      ),
    );
  }

  Future<void> setimage() async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imgpath = File(image!.path);
    });
  }
}

ImagePicker picker = ImagePicker();
File? imgpath;

String? name;
String? birthday;
String? personal;
