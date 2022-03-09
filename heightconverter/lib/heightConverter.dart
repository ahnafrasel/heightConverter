// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:heightconverter/home.dart';
import 'variables.dart';

class HeightConverter extends StatefulWidget {
  const HeightConverter({Key? key}) : super(key: key);

  @override
  _HeightConverterState createState() => _HeightConverterState();
}

class _HeightConverterState extends State<HeightConverter> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double fw = MediaQuery.of(context).size.width;
    // double fh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromARGB(255, 190, 150, 18),
        body: Column(
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
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width - 100,
                      height: 50,
                      // color: Colors.red,
                      child: const Text(
                        'Height Converter',
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
                  ],
                )
              ],
            ),
            //////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            /////////////////////////////////////////
            Container(
              alignment: Alignment.center,
              height: 45,
              width: fw - 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              it1 = ait;
                              it2 = iit;
                              it3 = iit;
                              it1tc = aittc;
                              it2tc = iittc;
                              it3tc = iittc;
                              inch = double.parse(opvalue);
                              inch = inch * 2.54;
                              opvalue = inch.toString();
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 2, right: 2),
                          alignment: Alignment.center,
                          height: i1,
                          width: fw / 3 - 40,
                          decoration: BoxDecoration(
                            color: it1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Centimeter',
                            style: TextStyle(
                              color: it1tc,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              it1 = iit;
                              it2 = ait;
                              it3 = iit;
                              it1tc = iittc;
                              it2tc = aittc;
                              it3tc = iittc;
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 2, right: 2),
                          alignment: Alignment.center,
                          height: i2,
                          width: fw / 3 - 40,
                          decoration: BoxDecoration(
                            color: it2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Feet',
                            style: TextStyle(
                              color: it2tc,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              it1 = iit;
                              it2 = iit;
                              it3 = ait;
                              it1tc = iittc;
                              it2tc = iittc;
                              it3tc = aittc;
                              inch = double.parse(opvalue);
                              inch = inch / 2.54;
                              opvalue = inch.toString();
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 2, right: 2),
                          alignment: Alignment.center,
                          height: i3,
                          width: fw / 3 - 40,
                          decoration: BoxDecoration(
                            color: it3,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Inci',
                            style: TextStyle(
                              color: it3tc,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: fw,
                  height: 200,
                  child: Text(
                    opvalue,
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: fw / 3,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
