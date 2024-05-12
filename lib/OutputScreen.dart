import 'package:calories_calculator/InputScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainColor.dart';


class outputScreen extends StatelessWidget {

  final double BMI;
  final int BMR;

  outputScreen(this.BMI,this.BMR);

  Map<Color?, String> map = {
    Colors.yellow[300] : "UNDERWEIGHT",
    Colors.green[400] : "NORMAL",
    Colors.orange : "OVERWEIGHT",
    Colors.red : "OBESE",
};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("BMI",),
                              Text("$BMI",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 100),),
                              Text("${map[BMIcolor(BMI)]}",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: BMIcolor(BMI)),),

                            ],
                          ),
                        )),
                    SizedBox(height: 20,),
                    Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("BMR",),
                              Text("${BMR}",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 100),),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => inputScreen()));
                  },
                  style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                              (states) => secondaryColor)),
                  child: Text(
                    "GO BACK",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Color? BMIcolor(double BMI) {
    if (BMI<=18.4) {
      return Colors.yellow[300];
    } else {
      if (BMI <= 24.9) {
        return Colors.green[400];
      } else {
        if (BMI<=39.9) {
          return Colors.orange;
        }
        else {
          return Colors.red;
        }
      }
    }
  }
}