import 'dart:math';

import 'package:calories_calculator/MainColor.dart';
import 'package:calories_calculator/OutputScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputScreen extends StatefulWidget {
  @override
  State<inputScreen> createState() => _inputScreenState();
}

bool? isMale;
double height=150;
int weight=60,age=20;




class _inputScreenState extends State<inputScreen> {
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
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isMale=true;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 400),
                                decoration: BoxDecoration(
                                color: isMale ==true ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)),
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male_rounded,
                                  size: 120,
                                  color: isMale==true ? secondaryColor : Colors.white,
                                ),
                                Text(
                                  "MALE",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isMale=false;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 400),
                                decoration: BoxDecoration(
                                    color: isMale ==false ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female_rounded,
                                  size: 120,
                                  color: isMale==false ? secondaryColor : Colors.white,
                                  
                                ),
                                Text(
                                  "FEMALE",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("HEIGHT"),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("${height.round()}",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 60),),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text("CM",),
                                ),
                              ],
                            ),
                            Slider(
                              value: height,
                              onChanged: (value){
                                setState(() {
                                  height=value;
                                });
                              },
                              min: 20,
                              max: 220,
                              activeColor: secondaryColor,
                              inactiveColor: secondaryColor.withOpacity(0.4),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:20,),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("WEIGHT",),
                                    Text("$weight",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 60),),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: secondaryColor,
                                          child: IconButton(
                                            color: Colors.white,
                                              onPressed: (){
                                              setState(() {
                                                weight--;
                                              });
                                              },
                                              icon: Icon(Icons.remove,size: 24,)),
                                        ),
                                        SizedBox(width: 20,),
                                        CircleAvatar(
                                          backgroundColor: secondaryColor,
                                          child: IconButton(
                                              color: Colors.white,
                                              onPressed: (){
                                                setState(() {
                                                  weight++;
                                                });
                                              },
                                              icon: Icon(Icons.add,size: 24,)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("AGE",),
                                    Text("$age",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 60),),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: secondaryColor,
                                          child: IconButton(
                                              color: Colors.white,
                                              onPressed: (){
                                                setState(() {
                                                  age--;
                                                });
                                              },
                                              icon: Icon(Icons.remove,size: 24,)),
                                        ),
                                        SizedBox(width: 20,),
                                        CircleAvatar(
                                          backgroundColor: secondaryColor,
                                          child: IconButton(
                                              color: Colors.white,
                                              onPressed: (){setState(() {
                                                age++;
                                              });},
                                              icon: Icon(Icons.add,size: 24,)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
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
                    if (isMale == null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please Enter Your Gender"),
                      showCloseIcon: true,
                      closeIconColor: Colors.white,)
                      );
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outputScreen(BMI(height: height, weight: weight), BMR(isMale: isMale, height: height, weight: weight, age: age))));
                    }
                  },
                  child: Text(
                    "CALCULATE",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  double BMI({
    required double height,
    required int weight
  }) {
    double result = weight/(pow(height/100,2));
    print("BMI $result");
    result = double.parse(result.toStringAsFixed(2));
    print("BMI $result");
    return result;
  }

  int BMR({
    required bool? isMale,
    required double height,
    required int weight,
    required int age,
}){
    double result;
    if (isMale==true) {
      result = 66.47 + (13.75 * weight) + (5.003*height) - (6.755*age);
    }
    else {
      result = 655.1 + (9.563 * weight) + (1.85*height) - (4.676*age);
    }
    return result.round();
  }
}
