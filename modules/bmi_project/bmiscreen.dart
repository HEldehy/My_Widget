import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_resulr_screen.dart';
class BmiSCreen extends StatefulWidget {
  @override
  _BmiSCreenState createState() => _BmiSCreenState();
}
class _BmiSCreenState extends State<BmiSCreen> {
  bool isMale=true;
  double height=120;
  int weight=40;
  int age=25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
              children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assert/images/male.png'),),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale?Colors.red:Colors.grey[900],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(height: 48.0,
                              width: 48.0,
                              image: AssetImage('assert/images/womeen.png',),),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale?Colors.red:Colors.grey[900],
                        ),
                      ),
                    ),
                  )
              ],
            ),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[900]),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('HEIGHT',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),),
                    SizedBox(height: 10.0,),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${height.round()}',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),),
                          Text('CM',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Slider(
                        activeColor: Colors.red,
                          value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value){
                          setState(() {
                            height=value;
                          });

                      }),
                    )


                  ],),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[900],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('WEIGHT',
                        style: TextStyle(
                          fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),),
                          Text('${weight}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,),),

                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FloatingActionButton(
                              heroTag: 'wehght -',
                              mini: true,
                              backgroundColor: Colors.red,
                              onPressed:
                                (){
                                setState(() {
                                  weight--;
                                });
                                },
                              child: Icon(
                                  Icons.remove),),
                            SizedBox(width: 10.0,),
                            FloatingActionButton(
                              heroTag: 'wehght +',
                              mini: true,
                              backgroundColor: Colors.red,
                              onPressed:
                                (){
                                setState(() {
                                  weight++;
                                });
                                },
                              child: Icon(Icons.add),),
                          ],)
                      ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      color: Colors.grey[900],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,),),
                          Text('${age}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FloatingActionButton(
                              heroTag: 'Age -',
                              mini: true,
                              backgroundColor: Colors.red,
                              onPressed:
                                  (){
                                setState(() {
                                  age--;

                                });
                                  },
                              child: Icon(Icons.remove),),
                            SizedBox(width: 10.0,),
                            FloatingActionButton(
                              mini: true,
                              heroTag: 'Age +',
                              backgroundColor: Colors.red,
                              onPressed:
                                  (){
                                setState(() {
                                  age++;
                                });
                                  },
                              child: Icon(Icons.add),
                            ),
                          ],)
                        ],),
                    ),
                  ),
                ],),
              )
            ),
            Container(
                color: Colors.red,
                width: double.infinity,
                height: 50.0,
                child: MaterialButton(
                  onPressed: () {
                    var result =weight/pow(height/100,2);
                    print(result.round());
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context)=>BMIResultScreen(result: result.round(),
                          ismale: isMale,
                          age: age,
                          weight: weight,),
                        ));
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
