import 'package:bmi_app/screens/final_result_page.dart';
import 'package:flutter/material.dart';

class HeightWeightDetector extends StatefulWidget {
  const HeightWeightDetector({super.key});

  @override
  State<HeightWeightDetector> createState() => _HeightWeightDetectorState();
}

class _HeightWeightDetectorState extends State<HeightWeightDetector> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  double? bmi;

  void calculateBmi() {
    final double? height = double.tryParse(heightController.text);
    final double? weight = double.tryParse(weightController.text);
    if (height != null && weight != null && height > 0) {
      setState(() {
        bmi = weight / ((height / 100) * (height / 100));
      });
    } else {
      setState(() {
        bmi = null;
      });
    }
  }

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "What's Your Height?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: heightController,
                              onChanged: (value) {
                                calculateBmi();
                              },
                              decoration: InputDecoration(
                                
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        Text('Cm'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "What's Your Weight?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: weightController,
                              onChanged: (value) {
                                calculateBmi();
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        Text('Kg'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return FinalResultPage(
                  Bmi: bmi,
                );
              }));
            },
            child: Text(
              "Calculate Your BMI",
              style: TextStyle(fontSize: 30),
            ),
            color: Colors.purple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 160,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
