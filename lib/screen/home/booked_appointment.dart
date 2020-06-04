import 'file:///C:/Users/DELL/Desktop/Flutter/darpan_dental_home/lib/model/appoitment.dart';
import 'package:darpandentalhome/screen/payment/payment.dart';
import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookedAppointment extends StatefulWidget {
  @override
  _BookedAppointmentState createState() => _BookedAppointmentState();
}

class _BookedAppointmentState extends State<BookedAppointment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Appointment',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Booked',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.green
                        ),
                      )
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,0),
                child: Text(
                  'Your Name:',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 18,
                    ),
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery.of(context). size. width,
                  height: 60,
                    decoration: boxDecoration,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Sanjiv Gurung',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ),
                      ),
                    ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Your Email:',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: boxDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'sanjivgurung@gmail.com',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Appointment Date:',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: boxDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '2020-01-01',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Appointment Doctor:',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: boxDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Saurab Adhikari',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Appointment For:',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: boxDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Normal Check Up',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: MaterialButton(
                  height: 55,
                  minWidth: 230,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  color: Color(0xff4CAB50),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment()
                      )
                    );
                  },
                  child: Text(
                    'Request Payment',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MaterialButton(
                    height: 55,
                    minWidth: 230,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    color: Color(0xffCE5B51),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel Appointment',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
                      )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
