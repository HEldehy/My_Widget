import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwork/layouts/todoapp/todo_bloc/todo_cubit.dart';
import 'package:hardwork/layouts/todoapp/todo_bloc/todo_states.dart';
import 'package:hardwork/shared/componenets/componentes.dart';
import 'package:hardwork/shared/componenets/constance.dart';

class NewTasks extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoAppCubit,TodoAppStates>(
      listener: (context,index){},
      builder: (context,index)=> ListView.separated(
          itemBuilder: (context,index)=>buildTaskItem(TodoAppCubit.get(context).tasks[index]),
          separatorBuilder:(context,index)=> Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0,end: 10.0),
            child: Divider(
              thickness: 2,
              color: Colors.grey[300],
            ),
          ),
          itemCount: TodoAppCubit.get(context).tasks.length),

    );
  }

}