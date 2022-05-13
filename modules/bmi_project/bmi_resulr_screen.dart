import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget{
  final int result;
  final bool ismale;
  final int age ;
  final int weight;
  BMIResultScreen({@required this.age,
    @required this.ismale,
    @required this.result,
    @required this.weight});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        } ,
            icon: Icon(Icons.keyboard_arrow_left,)),
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('BMI RESULT',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white),),
      ),
      body: Container(
        color: Colors.red,
        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: double.infinity,
              color: Colors.grey[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('GENDER : ${ismale?'MALE':'FEMALE'}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                    color: Colors.white
                ),),
                SizedBox(height: 10.0,),
                  Text('WEHGHT : ${weight}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white
                    ),),
                  SizedBox(height: 10.0,),
              Text('AGE : ${age}',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white
              ),),
                  SizedBox(height: 10.0,),
                Text('RESULT : ${result}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white
                  ),),
              ],),
            ),
          ),
        ),
      ),
    );
}}