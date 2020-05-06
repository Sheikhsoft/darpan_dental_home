import 'package:darpandentalhome/appoitment.dart';
import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';

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
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Booked',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,0),
                child: Text(
                  'Your Name:',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 15,
                    color: Colors.blue[900]
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                    decoration: textInputtedDecoration,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Sanjiv Gurung',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Rubik'
                          ),
                        ),
                      ),
                    ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Your Email:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: textInputtedDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'sanjivgurung@gmail.com',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Rubik'
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Appointment Date:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: textInputtedDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '2020-01-01',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Rubik'
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Appointment Doctor:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: textInputtedDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Saurab Adhikari',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Rubik'
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,0),
                  child: Text(
                    'Appointment For:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Container(
                  width: MediaQuery. of(context). size. width,
                  height: 60,
                  decoration: textInputtedDecoration,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Normal Check Up',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Rubik'
                        ),
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
                  onPressed: () {},
                  child: Text(
                    'Request Payment',
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
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
                    onPressed: () {},
                    child: Text(
                      'Cancel Appointment',
                      style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
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
