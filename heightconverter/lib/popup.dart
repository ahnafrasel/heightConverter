// ignore_for_file: deprecated_member_use, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:heightconverter/heightConverter.dart';
import 'variables.dart';

Widget incPop(BuildContext context) {
  return AlertDialog(
    backgroundColor: Color(0xFF4B6071).withOpacity(0.7),
    title: const Text(
      'Input INCH',
      style: TextStyle(color: Color(0xFF00d5ff)),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Color(0xFF00d5ff)),
          textAlign: TextAlign.center,
          onChanged: (Text) {
            tvalue = Text;
          },
        ),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            print('tvalue');
          },
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HeightConverter(),
                ),
              );
            },
            child: InkWell(
              onTap: () {
                ivalue = tvalue;
                inch = double.parse(tvalue);
                inch = inch * 2.54;
                opvalue = inch.toString();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HeightConverter(),
                  ),
                );
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff8cecff),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    'GO',
                    style: TextStyle(color: Color(0xFF003e4a)),
                  )),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget fitCm(BuildContext context) {
  return AlertDialog(
    backgroundColor: Color(0xFF4B6071).withOpacity(0.7),
    title: const Text(
      'Input INCH',
      style: TextStyle(color: Color(0xFF00d5ff)),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Color(0xFF00d5ff)),
          textAlign: TextAlign.center,
          onChanged: (Text) {
            tvalue = Text;
          },
        ),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            print('tvalue');
          },
          child: InkWell(
            onTap: () {
              MaterialPageRoute(
                builder: (context) => const HeightConverter(),
              );
            },
            child: InkWell(
              onTap: () {
                ivalue = tvalue;
                inch = double.parse(tvalue);
                inch = inch * 30.48;
                opvalue = inch.toString();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HeightConverter(),
                  ),
                );
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff8cecff),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    'GO',
                    style: TextStyle(color: Color(0xFF003e4a)),
                  )),
            ),
          ),
        ),
      ),
    ],
  );
}
