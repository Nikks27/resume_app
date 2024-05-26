import 'dart:typed_data';


import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_app/utils/Education.dart';

import 'Contact.dart';
import 'ParsonDetails.dart';
import 'Skills.dart';

class PdfOfCv extends StatefulWidget {
  const PdfOfCv({super.key});

  @override
  State<PdfOfCv> createState() => _PdfOfCvState();
}

class _PdfOfCvState extends State<PdfOfCv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PdfPreview(
        build: (format) => genratePdf(),
      ) ,
    );
  }
}
Future<Uint8List> genratePdf()
async { final pdf=pw.Document();
final image = pw.MemoryImage(
      fileImage!.readAsBytesSync());
 pdf.addPage(
     pw.Page(
       pageFormat: PdfPageFormat.a4,
       build: (context) => pw.Column(
         children: [
           pw.Text(Institude!),
  pw.Container(
  height: 700,
  width: 170,
  decoration: pw.BoxDecoration(
    color: PdfColors.blue,
  ),
    child: pw.Column(
      children: [
        pw.Container(
          margin: pw.EdgeInsets.only(top: 20),
          height:120,
          width: 120,
         decoration:  pw.BoxDecoration(
            color: PdfColors.white,
           image: pw.DecorationImage(
             fit: pw.BoxFit.cover,
             image: image,
           ),
          ),
        ),
        pw.SizedBox(height: 10),
        pw.Text(" imformation ",style: pw.TextStyle(  fontWeight: pw.FontWeight.bold,fontSize: 20)   ),
        pw.Text(" $name ",style: pw.TextStyle( fontSize: 20)   ),
        pw.Text(" $birthday ",style: pw.TextStyle(  fontSize: 20)   ),
        pw.Text(" $personal ",style: pw.TextStyle(  fontSize: 20)   ),
        pw.SizedBox(height: 10),
        pw.Text(" Contact ",style: pw.TextStyle(  fontWeight: pw.FontWeight.bold,fontSize: 20)   ),
        pw.Text(" $email ",style: pw.TextStyle( fontSize: 20)   ),
        pw.Text(" $phone ",style: pw.TextStyle(  fontSize: 20)   ),
        pw.Text(" $address ",style: pw.TextStyle(  fontSize: 20)   ),
        pw.SizedBox(height: 10),
        pw.Text(" Skills ",style: pw.TextStyle(  fontWeight: pw.FontWeight.bold,fontSize: 20)   ),
        pw.Column(
          children:
            [
              ...List.generate(
                  controllerlist.length,
                      (index) => pw.Column(
                      children: [
                        pw.Text('${controllerlist[index].text}   ',
                            style: pw.TextStyle(
                                fontSize: 20, color: PdfColors.blue800,fontWeight: pw.FontWeight.bold)),
                      ]
                  )),

            ]
        ),
        pw.Column(
            children: [
              pw.Text('About me ',style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,)),
            ]
        ),

      ]
    ),


),

]
       ),
     )
 );
 return pdf.save();
}
