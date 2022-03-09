// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:heightconverter/home.dart';
import 'package:heightconverter/popup.dart';

class HeightInput extends StatelessWidget {
  const HeightInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fw = MediaQuery.of(context).size.width;
    double fh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                      child: const SizedBox(
                        width: 50,
                        height: 50,
                        // color: Colors.blue,
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        // color: Colors.red,
                        child: const Text(
                          'Input Your Height',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 1,
                                color: Color.fromARGB(255, 63, 63, 63),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ///////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => fitCm(context),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: fw - 100,
                    height: fh / 3 - 30,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.4),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Fit to CM',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 217, 255),
                          fontSize: fw / 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => incPop(context),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: fw - 100,
                    height: fh / 3 - 30,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                    ),
                    child: Text(
                      'Cemtimeter',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 217, 255),
                          fontSize: fw / 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => incPop(context),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: fw - 100,
                    height: fh / 3 - 30,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      'INCI',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 217, 255),
                          fontSize: fw / 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
