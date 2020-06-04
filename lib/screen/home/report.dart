import 'package:darpandentalhome/services/api_for_report.dart';
import 'package:darpandentalhome/shared/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:google_fonts/google_fonts.dart';

class Report extends StatefulWidget {

  final String url;

  Report({this.url});

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  String path;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService(pdfURL: widget.url).loadPDF().then((value){
      setState(() {
        path=value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
            'Report',
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 28
            )
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,),
          onPressed: () {
              Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: path != null ? PDFView(
        filePath: path,
      ) : Loading(),
      floatingActionButton: IconButton(
        icon: Icon(Icons.refresh,size: 30,),
        onPressed: () {
          setState(() {
            path = null;
            ApiService(pdfURL: widget.url).loadPDF().then((value){
              setState(() {
                path=value;
              });
            });
          });
        },
      ),
    );
  }
}
