import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';

class EsewaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'eSewa ID:',
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 15,
                    color: Colors.blue[900]
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,20,10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.black,
              decoration: textInputDecoration.copyWith(hintText: '9810000001'),
            ),
          ),

          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'MPIN:',
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 15,
                    color: Colors.blue[900]
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,20,10),
            child: TextFormField(
              obscureText: true,
              cursorColor: Colors.black,
              decoration: textInputDecoration.copyWith(hintText: '****'),
            ),
          ),
        ],
      ),
    );
  }
}
