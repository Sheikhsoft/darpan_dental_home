import 'package:darpandentalhome/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFPageView extends StatefulWidget {
  final String path;
  final String url;
  PDFPageView({this.path,this.url});
  @override
  _PDFPageViewState createState() => _PDFPageViewState();
}

class _PDFPageViewState extends State<PDFPageView> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  new GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.path != null ? Container(
        child: PDFView(
          filePath: widget.path,
        ),
      ) : Loading(),
      floatingActionButton: IconButton(
        icon: Icon(Icons.refresh,size: 40,),
        onPressed: () {
          _refreshIndicatorKey.currentState.show();
        },
      ),
    );
  }
}
