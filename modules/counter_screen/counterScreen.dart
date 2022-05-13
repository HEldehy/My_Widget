import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwork/modules/counter_screen/counter_bloc/counter_states.dart';
import 'counter_bloc/counter_cubit.dart';
class CounterScreen extends StatelessWidget {
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.amberAccent,
            appBar: AppBar(
              elevation: 1.0,
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
                          CounterCubit.get(context).minusCounter();
                        },
                        child: CircleAvatar(
                          radius: 30.0,
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
                        '${CounterCubit.get(context).counter}',
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
                            CounterCubit.get(context).plusCounter();
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
        },
      ),
    );
  }
}
