import 'package:darpandentalhome/screen/home/api_for_report.dart';
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

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  new GlobalKey<RefreshIndicatorState>();

  String path;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService(PDF_URL: widget.url).loadPDF().then((value){
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
        centerTitle: true,
        title: Text(
            'Report',
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500
            )
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () {
              Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xfff9f9f9),
      ),
      backgroundColor: Color(0xfff9f9f9),
      body: path != null ? Container(
        child: PDFView(
          filePath: path,
        ),
      ) : Loading(),
      floatingActionButton: IconButton(
        icon: Icon(Icons.refresh,size: 40,),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => Report(url: widget.url,)));
        },
      ),
    );
  }
}
