import 'dart:io';
import 'package:darpandentalhome/screen/home/apiForPDF.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  String pdfPath = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiServiceProvider.loadPDF().then((value) {
      setState(() {
        pdfPath = value;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Text(
                  'Report',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
//              PDF Viewer Area Down
              Container(
                child: PDFView(
                  filePath: pdfPath,
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
