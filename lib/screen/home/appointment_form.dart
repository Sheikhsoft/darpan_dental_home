import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentForm extends StatefulWidget {
  final String appointedFor;
  final String appointedDoctor;
  AppointmentForm({this.appointedFor,this.appointedDoctor});
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {

  DateTime _dateTime = DateTime.now();

  Future<DateTime> _selectedDate(BuildContext context) {
    return showRoundedDatePicker(
      context: context,
      initialDate: _dateTime == null ? DateTime.now() : _dateTime,
      firstDate: DateTime(2001),
      lastDate: DateTime(2222),
      theme: ThemeData.dark(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                    'Appointment Form',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                iconSize: 40,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'Full Name:',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
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
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'Email:',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
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
              decoration: textInputDecoration.copyWith(hintText: 'sanjivgurung@gmail.com'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'Date:',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,20,10),
            child: InkWell(
              onTap: () async {
                final selectedDate = await _selectedDate(context);
                if(selectedDate == null) return;
                setState(() {
                  _dateTime = selectedDate;
                });
              },
              child: Container(
                decoration: boxDecoration.copyWith(color: Color(0xfff2f2f3),),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${_dateTime.year}-${_dateTime.month}-${_dateTime.day}',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                )
              ),
            )
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'Appointed For:',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,10),
              child: Container(
                  decoration: boxDecoration.copyWith(color: Color(0xfff2f2f3),),
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.appointedFor,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )
              )
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'Appointed Doctor:',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,10),
              child: Container(
                  decoration: boxDecoration.copyWith(color: Color(0xfff2f2f3),),
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.appointedDoctor,
                        style: TextStyle(
                            fontSize: 15,
                          fontFamily: 'Rubik'
                        ),
                      ),
                    ),
                  )
              )
          ),
          SizedBox(height: 10,),
          Center(
            child: MaterialButton(
              height: 55,
              minWidth: 230,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              color: Color(0xff4CBBB9),
              onPressed: () {},
              child: Text(
                'Book Now',
                style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
