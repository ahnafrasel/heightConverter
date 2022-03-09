import 'package:flutter/material.dart';
import 'package:heightconverter/heightInput.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fw = MediaQuery.of(context).size.width;
    double fh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HeightInput(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: fw,
                  height: fh * 0.5,
                  child: Text(
                    'HEIGHT CONVERTER',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 138, 156),
                        fontSize: fw * 0.09,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // Expanded(
            //     child: InkWell(
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: fw,
            //     height: fh * 0.5,
            //     child: Text(
            //       'WEIGHT CONVERTER',
            //       style: TextStyle(
            //           color: it1,
            //           fontSize: fw * 0.09,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // )),
          ],
        ),
      ),
    );
  }
}
