import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter =1;
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Counter',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                      print(counter);

                    });

                  },
                  child: CircleAvatar(radius: 30.0,
                    child: Text(
                      'Minus',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.blue[800]),
                    ),
                  )),
              SizedBox(
                width: 20.0,
              ),

              CircleAvatar(
                radius: 60.0,
                child: Text(
                  '$counter',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              CircleAvatar(
                radius: 30,
                child: TextButton(

                    onPressed: () {
                      setState(() {
                        counter++;
                        print(counter);
                      });

                    },
                    child: Text(
                      'Plus',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.blue[800]),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
