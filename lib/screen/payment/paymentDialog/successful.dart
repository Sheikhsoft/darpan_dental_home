import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Dialog paymentSuccess = Dialog(
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
                SizedBox(height: 25,),
                Container(
                  height: 90,
                    width: 90,
                    child: SvgPicture.asset('assets/images/tick.svg')
                ),
                SizedBox(height: 20,),
                Text(
                    'Transaction Successful',
                  style: TextStyle(
                    color: Color(0xff7AC042),
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