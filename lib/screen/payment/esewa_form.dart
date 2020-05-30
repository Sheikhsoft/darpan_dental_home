import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EsewaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(25,10,20,0),
                child: Text(
                  'eSewa ID:',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 18,
                    ),
                  )
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,10),
              child: TextFormField(
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 15,
                  ),
                ),
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                decoration: textInputDecoration.copyWith(hintText: '9810000001'),
              ),
            ),

            Padding(
                padding: const EdgeInsets.fromLTRB(25,10,20,0),
                child: Text(
                  'MPIN:',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 18,
                    ),
                  )
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,10),
              child: TextFormField(
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 15,
                  ),
                ),
                obscureText: true,
                cursorColor: Colors.black,
                decoration: textInputDecoration.copyWith(hintText: '****'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
