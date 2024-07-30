import 'package:flutter/material.dart';

class AgeDetector extends StatefulWidget {
  const AgeDetector({super.key});

  @override
  State<AgeDetector> createState() => _AgeDetectorState();
}

class _AgeDetectorState extends State<AgeDetector> {
  int age = 15;


  void ageButtonIncrement() {
    setState(() {
      age++;
    });
  }

  void ageButtondecrement() {
    setState(() {
      age--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "What's Your Age?",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "$age",
                          style: TextStyle(fontSize: 90, color: Colors.black),
                        )),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10, right: 40),
                          child: MaterialButton(
                            shape: CircleBorder(),
                            onPressed: ageButtonIncrement,
                            child: Icon(
                              Icons.arrow_upward,
                              size: 40,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          child: MaterialButton(
                            shape: CircleBorder(),
                            onPressed: ageButtondecrement,
                            child: Icon(
                              Icons.arrow_downward,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            );
  }
}