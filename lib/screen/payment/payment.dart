import 'package:darpandentalhome/screen/payment/card_form.dart';
import 'package:darpandentalhome/screen/payment/esewa_form.dart';
import 'package:darpandentalhome/screen/payment/paymentDialog/error.dart';
import 'package:darpandentalhome/screen/payment/paymentDialog/successful.dart';
import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  bool showCardForm = true;
  bool success = true;

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
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 20,),
                  Text(
                      'Payment',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500
                        ),
                      )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,10),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: boxDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Appointment Total:',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Rs. 1100',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      showCardForm = true;
                    });
                  },
                  child: Container(
                    width: MediaQuery. of(context). size. width,
                    height: 60,
                    decoration: boxDecoration.copyWith(color: showCardForm ? Color(0xff4CAB50) : Color(0xff424364)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/icons/credit.png'),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Pay with Credit Card',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text('or'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      showCardForm = false;
                    });
                  },
                  child: Container(
                    width: MediaQuery. of(context). size. width,
                    height: 60,
                    decoration: boxDecoration.copyWith(color: showCardForm ? Color(0xff424364) : Color(0xff4CAB50)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/icons/eSewa.png'),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Pay with eSewa',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              showCardForm ? CardForm() : EsewaForm(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: MaterialButton(
                    height: 55,
                    minWidth: 230,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    color: Color(0xff4CAB50),
                    onPressed: () {
                      showDialog(
                          context: context,
                        builder: (BuildContext context) => success ? paymentSuccess : paymentError
                      );
                      setState(() {
                        success=!success;
                      });
                    },
                    child: Text(
                      'Pay Now',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
