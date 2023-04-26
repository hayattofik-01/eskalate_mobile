import 'package:flutter/material.dart';

class BlueCard extends StatelessWidget {
  const BlueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -25,
        left: MediaQuery.of(context).size.width * 0.12,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.1,
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(33, 81, 205, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(211, 10, 71, 151),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("52",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22 * MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w300)),
                               Text("Post",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12 * MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w100))
                            ]),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("250",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22 * MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w300)),
                           Text("Following",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12 * MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w100))
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("4.5k",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22 * MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w300)),
                          Text("Followers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12 * MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w100))
                        ]),
                  ],
                ),
              )),
        ));
  }
}