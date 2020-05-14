import 'package:darpandentalhome/appoitment.dart';
import 'package:darpandentalhome/screen/home/report.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardClass extends StatefulWidget {
  final int number;
  final Appointment appointments;
  CardClass({this.appointments,this.number});

  @override
  _CardClassState createState() => _CardClassState();
}

class _CardClassState extends State<CardClass> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Report(url: widget.appointments.reportURL)));
        },
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25,15,0,15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${widget.number}',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 36
                        ),
                      )
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        widget.appointments.appointmentDate,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                        ),
                      )
                    ),
                    Text(
                        widget.appointments.appointedFor,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 15,
                          color: Colors.grey
                        ),
                      )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
