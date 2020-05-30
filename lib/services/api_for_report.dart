import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiService{

  final String pdfURL;

  ApiService({this.pdfURL});

  Future<String> loadPDF() async {
    var response = await http.get(pdfURL);
    var dir = await getExternalStorageDirectory();
    File file = File(dir.path + "/data.pdf");
    await file.writeAsBytes(response.bodyBytes, flush: true);
    return file.path;
  }

}