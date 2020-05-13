import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiService{

  final String PDF_URL;

  ApiService({this.PDF_URL});

  Future<String> loadPDF() async {
    var response = await http.get(PDF_URL);

    var dir = await getTemporaryDirectory();
    File file = File(dir.path + "/data.pdf");
    await file.writeAsBytes(response.bodyBytes, flush: true);
    return file.path;
  }

}