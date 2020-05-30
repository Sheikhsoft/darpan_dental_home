import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardForm extends StatelessWidget {
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
                  'Card Number:',
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
                decoration: textInputDecoration.copyWith(hintText: '**** **** **** 6773'),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(25,10,20,0),
                          child: Text(
                            'Expiry Date:',
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,5,10),
                        child: TextFormField(
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          decoration: textInputDecoration.copyWith(hintText: 'MM/YY'),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10,10,20,0),
                          child: Text(
                            'CCV:',
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5,10,20,10),
                        child: TextFormField(
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            decoration: textInputDecoration.copyWith(hintText: '***')
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(25,10,20,0),
                child: Text(
                  'Card Holder Name:',
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
                cursorColor: Colors.black,
                decoration: textInputDecoration.copyWith(hintText: 'Sanjiv Gurung'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
