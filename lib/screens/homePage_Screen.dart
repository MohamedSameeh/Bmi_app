import 'package:bmi_app/widgets/age_detector.dart';
import 'package:bmi_app/widgets/gender_type.dart';
import 'package:bmi_app/widgets/height_weight_detector.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              GenderType(),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white38,
                endIndent: 50,
                indent: 20,
              ),
              AgeDetector(),
              Divider(
                color: Colors.white38,
                endIndent: 50,
                indent: 20,
              ),
              HeightWeightDetector(),
            ],
          ),
        ),
      ),
    );
  }
}
