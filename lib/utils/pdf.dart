import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                Container(
                  height: 735,
                  width: 410,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/pdf.jpg',
                        height: 700,
                        fit: BoxFit.fitHeight,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Rabari Naresh',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              Container(
                                height: 110,
                                width: 90,
                                child: Image.asset(
                                    'assets/WhatsApp Image 2024-03-14 at 9.54.23 AM.jpeg'),
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            // color: Colors.grey,
                            height: 550,
                            // alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'DETAILS',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      '        ------------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      '   ADDRESS',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '   150,santosh nagar\n   parvat gam near\n   mamta talkies     \n   limbayat surat ',
                                      style: TextStyle(color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      '   E-MAIL',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '   nirajrajput6983@gmail.com',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      '   PHONE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '   +91-8733833348',
                                      style: TextStyle(color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      '   BIRTHDAY',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '   10april2001',
                                      style: TextStyle(color: Colors.grey.shade700),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      '   SKILLS',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      '        --------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      '    Communication,Negotation\n    Sales Strategy',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      '   LANGUAGES',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      '        --------------------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      '   English,Hindi,Gujarati',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      '   HOBBIES',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      '        --------------------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      '   Cricket,Learn new Technologies',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                VerticalDivider(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'PROFILE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      '------------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      'Passionate sales\n   representatives with\n     ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade700,
                                      ),
                                      maxLines: 200,
                                    ),
                                    Text(
                                      'Experience',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '----------------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      'Senior Accountant Representives',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Shree Sai Computer World',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '14 march 2024(present)',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Sales Reprentives',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'But i am maintained\nCustomers relationship\nachieved targets...',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'EDUCATION',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '---------------------',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -2),
                                    ),
                                    Text(
                                      'VNSGU',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Sabargam Colleges(Niyol)',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'B.com 14april2023 completed',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Ssc 12th completed',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '->Year 2019',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Hsc 10th completed',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '->Year 2017',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: IconButton(
                      onPressed: () async {
                        final pdf = pd.Document();

                        pdf.addPage(
                          pd.MultiPage(
                            pageFormat: PdfPageFormat.a4,
                            build: (pd.Context context) {
                              return [

                                pd.Container(
                                  // color: Colors.grey,
                                  height: 550,
                                  // alignment: Alignment.center,
                                  child: pd.Row(
                                    mainAxisAlignment: pd.MainAxisAlignment.start,
                                    children: [
                                      pd.Column(
                                        crossAxisAlignment: pd.CrossAxisAlignment.start,
                                        children: [
                                          pd.Padding(
                                            padding: pd. EdgeInsets.only(left: 10),
                                            child: pd.Text(
                                              'DETAILS',
                                              style: pd.TextStyle(
                                                  color: PdfColors.black,
                                                  fontWeight: pd.FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                          pd.Text(
                                            '        ------------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            '   ADDRESS',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontSize: 15,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '   150,santosh nagar\n   parvat gam near\n   mamta talkies     \n   limbayat surat ',
                                            style: pd.TextStyle(color: PdfColors.grey),
                                          ),
                                          pd.Text(
                                            '   E-MAIL',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '   nirajrajput6983@gmail.com',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12),
                                          ),
                                          pd.Text(
                                            '   PHONE',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '   +91-8733833348',
                                            style: pd.TextStyle(color: PdfColors.grey),
                                          ),
                                          pd.Text(
                                            '   BIRTHDAY',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '   10april2001',
                                            style: pd.TextStyle(color: PdfColors.black),
                                          ),
                                          pd.SizedBox(height: 6),
                                          pd.Text(
                                            '   SKILLS',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          pd.Text(
                                            '        --------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            '    Communication,Negotation\n    Sales Strategy',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          pd.SizedBox(height: 6),
                                          pd.Text(
                                            '   LANGUAGES',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          pd.Text(
                                            '        --------------------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            '   English,Hindi,Gujarati',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          pd.Text(
                                            '   HOBBIES',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          pd.Text(
                                            '        --------------------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            '   Cricket,Learn new Technologies',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      pd.VerticalDivider(),
                                      pd.Column(
                                        crossAxisAlignment: pd.CrossAxisAlignment.start,
                                        children: [
                                          pd.Text(
                                            'PROFILE',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontWeight: pd.FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          pd.Text(
                                            '------------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            'Passionate sales\n   representatives with\n     ',
                                            style: pd.TextStyle(
                                              fontWeight: pd.FontWeight.bold,
                                              color: PdfColors.grey,
                                            ),
                                            maxLines: 200,
                                          ),
                                          pd.Text(
                                            'Experience',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontSize: 15,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '----------------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            'Senior Accountant Representives',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 11,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'Shree Sai Computer World',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 11,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '14 march 2024(present)',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 11,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'Sales Reprentives',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'But i am maintained\nCustomers relationship\nachieved targets...',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 11,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'EDUCATION',
                                            style: pd.TextStyle(
                                                color: PdfColors.black,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '---------------------',
                                            style: pd.TextStyle(
                                                fontWeight: pd.FontWeight.bold,
                                                letterSpacing: -2),
                                          ),
                                          pd.Text(
                                            'VNSGU',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'Sabargam Colleges(Niyol)',
                                            style:pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'B.com 14april2023 completed',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'Ssc 12th completed',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '->Year 2019',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            'Hsc 10th completed',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                          pd.Text(
                                            '->Year 2017',
                                            style: pd.TextStyle(
                                                color: PdfColors.grey,
                                                fontSize: 12,
                                                fontWeight: pd.FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                              ];
                            },
                          ),
                        );

                        await Printing.layoutPdf(
                          onLayout: (format) => pdf.save(),
                        );
                      },
                      icon: Icon(
                        Icons.picture_as_pdf,
                        size: 50,
                        color: Colors.blue,
                      ),
                    )
                  // Page // Page
                ),
              ],
            )),
      ),
    );
  }
}