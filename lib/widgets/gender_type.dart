import 'package:flutter/material.dart';

class GenderType extends StatefulWidget {
  const GenderType({super.key});

  @override
  State<GenderType> createState() => _GenderTypeState();
}

class _GenderTypeState extends State<GenderType> {
  int selectedIndex = -1;
  bool ismale = true;
  void selectButton(int index) {
    setState(() {
      if (index == 1) {
        ismale = false;
      }
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                    margin: EdgeInsets.only(right: 150,top: 20),
                    child: Text(
                      "What's your Gender:",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
    
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      margin: EdgeInsets.all(20),
                      child: MaterialButton(
                        shape: CircleBorder(), // Maintain circular shape
                        color: selectedIndex == 0
                            ? Color.fromARGB(255, 71, 113, 148)
                            : Colors.black,
                        onPressed: () => selectButton(0),
                        child: Icon(
                          Icons.male,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                        child: Text(
                      'male',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      margin: EdgeInsets.all(20),
                      child: MaterialButton(
                        shape: CircleBorder(),
                        color: selectedIndex == 1
                            ? const Color.fromARGB(255, 71, 113, 148)
                            : Colors.black,
                        // Change color on selection
                        onPressed: () => selectButton(1),
                        child: Icon(
                          Icons.female,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                        child: Text(
                      'female',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ],
                )
              ],
            )  ],
    );
  }
}