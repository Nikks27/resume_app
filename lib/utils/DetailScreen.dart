import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
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
              children: [
                Icon(Icons.arrow_back_ios,size: 20,color: Colors.brown,),
                Text('Back',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            title: Text('Edit Your Profile',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
          ),
          body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/parson');
                      },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.person,size: 32,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('personal',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 170),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.mail,size: 32,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Contact',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 175),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/skill');
                      },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.construction,size: 32,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Skills',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 195),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/education');
                      },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.school,size: 38,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Educations',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 140),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(onTap:
                        () {
                      Navigator.pushNamed(context, '/experience');
                    },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.shopping_bag,size: 30,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Experience',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 140),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(onTap:
                        () {
                      Navigator.pushNamed(context, '/hobbies');
                    },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.headset_mic_rounded,size: 30,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Hobbies',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 165),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(onTap:
                        () {
                      Navigator.pushNamed(context, '/languages');
                    },
                      child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                                child: Icon(Icons.language,size: 30,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Languages',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 140),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                              child: Icon(Icons.person_sharp,size: 30,color: Colors.black,),),
                          ),SizedBox(width: 20),
                          Text('References',style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(width: 135),
                          Icon(Icons.star,size: 30,color: Colors.yellow,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(height: 60,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.brown.shade100),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.brown.shade100,
                              child: Icon(Icons.star,size: 30,color: Colors.black,),),
                          ),SizedBox(width: 20),
                          Text('Certificates',style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(width: 130),
                          Icon(Icons.star,size: 30,color: Colors.yellow,)
                        ],
                      ),
                    ),
                  ),
                ],
              )
        ),
      ),
    );
  }
}