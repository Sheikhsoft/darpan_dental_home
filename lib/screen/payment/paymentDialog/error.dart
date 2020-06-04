import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Dialog paymentError = Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Builder(
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xff050632),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Container(
                    height: 80,
                    width: 80,
                    child: SvgPicture.asset('assets/images/cross.svg')
                ),
                SizedBox(height: 20,),
                Text(
                  'Transaction Failed',
                  style: TextStyle(
                      color: Color(0xffF60100),
                      fontFamily: 'Rubik',
                      fontSize: 24
                  ),
                )
              ],
            ),
          ),
        );
      },
    )
);