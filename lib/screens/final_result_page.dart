import 'package:flutter/material.dart';

class FinalResultPage extends StatelessWidget {
  const FinalResultPage({super.key, required this.Bmi});
  final double? Bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            
            Container(
              margin: EdgeInsets.only(left: 10, top: 110),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/bmi3.png')),
                  borderRadius: BorderRadius.circular(50)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,top: 10),
              child: Text(
                "Your BMI  ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  '${Bmi!.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                )),
            if (Bmi! < 18.5)
              
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'You Have underWeight body weight !',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 88, 22, 180)),
                        )),
                        Container(
                        margin: EdgeInsets.only(top: 20,left: 10),
                        child: Text(
                          'It’s important to have a balanced diet to gain weight healthily. Consider consulting a healthcare provider for personalized advice',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color:  Color.fromARGB(255, 13, 34, 167)),
                        )),
                  ],
                )
              else if(Bmi! >= 18.5&&Bmi!<=24.5)
            Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'You Have Normal body weight !',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 88, 22, 180)),
                        )),
                        Container(
                        margin: EdgeInsets.only(top: 20,left: 10),
                        child: Text(
                          'Keep up the good work with a balanced diet and regular exercise to maintain your healthy weight!',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color:  Color.fromARGB(255, 13, 34, 167)),
                        )),
                  ],
                )
                  else if(Bmi! > 24.5&&Bmi!<=29.9)
                    Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'You Have OverWeight body weight !',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 88, 22, 180)),
                        )),
                        Container(
                        margin: EdgeInsets.only(top: 20,left: 10),
                        child: Text(
                          "It's important to maintain a healthy weight through a balanced diet and regular exercise. Consider consulting a healthcare provider for personalized advice",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Color.fromARGB(255, 13, 34, 167)),
                        )),
                  ],
                )
                    else if(Bmi! >= 30)
                    Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'You Have Obesity body weight !',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 88, 22, 180)),
                        )),
                        Container(
                        margin: EdgeInsets.only(top: 20,left: 10),
                        child: Text(
                          'It’s important to have a balanced diet to gain weight healthily Consider consulting a healthcare provider for personalized advice',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Color.fromARGB(255, 13, 34, 167)),
                        )),
                  ],
                )
          ],
        ),
      ),
    );
  }
}
