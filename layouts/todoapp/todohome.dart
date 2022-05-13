import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwork/layouts/todoapp/newdone.dart';
import 'package:hardwork/layouts/todoapp/newtask.dart';
import 'package:hardwork/layouts/todoapp/todo_bloc/todo_cubit.dart';
import 'package:hardwork/layouts/todoapp/todo_bloc/todo_states.dart';
import 'package:hardwork/shared/componenets/componentes.dart';
import 'package:hardwork/shared/componenets/constance.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'newarchived.dart';

class TodoHome extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formTodoKey = GlobalKey<FormState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TodoAppCubit()..createDatabase(),
      child: BlocConsumer<TodoAppCubit, TodoAppStates>(
        listener: (BuildContext context, TodoAppStates state) {
          if(state is TodoInsertDatabaseState){
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, TodoAppStates state) {
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Center(
                child: Text(
                  TodoAppCubit.get(context)
                      .titles[TodoAppCubit.get(context).currentIndex],
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            body: ConditionalBuilder(
              condition: true,
              builder: (context) => TodoAppCubit.get(context)
                  .screens[TodoAppCubit.get(context).currentIndex],
              fallback: (context) => Center(
                child: CircularProgressIndicator(),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (TodoAppCubit.get(context).isBottomSheetShow) {
                  if (formTodoKey.currentState.validate()) {

                    TodoAppCubit.get(
                        context).insertToDatabase(
                        title: timeController.text,
                        date: dateController.text,
                        time: timeController.text);
                    // insertToDatabase(
                    //   title: titleController.text,
                    //   date: dateController.text,
                    //   time: timeController.text,
                    // ).then((value) {
                    //   getDateFromDatabase(database).then((value) {
                    //     Navigator.pop(context);
                    //     // setState(() {
                    //     // isBottomSheetShow = false;
                    //     // floatBottomIcon = Icons.edit;
                    //     // tasks[0]=value[0];
                    //     // print(tasks[1]);
                    //     // });
                    //   });
                    // });
                  }
                } else {
                  scaffoldKey.currentState
                      .showBottomSheet(
                          (context) => SingleChildScrollView(
                                child: Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20.0),
                                  child: Form(
                                    key: formTodoKey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        defaultFormField(
                                            controller: titleController,
                                            type: TextInputType.text,
                                            icon: Icons.title,
                                            label: 'Task Title',
                                            validate: (String value) {
                                              if (value.isEmpty) {
                                                return 'Title MustNot be Empty';
                                              }
                                              return null;
                                            }),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        defaultFormField(
                                            controller: dateController,
                                            type: TextInputType.datetime,
                                            icon: Icons.date_range,
                                            onTap: () {
                                              showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime.now(),
                                                lastDate: DateTime.parse(
                                                    '2021-12-17'),
                                              ).then((value) {
                                                dateController.text =
                                                    DateFormat.yMMMd()
                                                        .format(value);
                                              });
                                            },
                                            label: 'Task Date ',
                                            validate: (String value) {
                                              if (value.isEmpty) {
                                                return 'Date MustNot be Empty';
                                              }
                                              return null;
                                            }),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        defaultFormField(
                                            controller: timeController,
                                            type: TextInputType.datetime,
                                            icon: Icons.watch_later,
                                            onTap: () {
                                              showTimePicker(
                                                context: context,
                                                initialTime: TimeOfDay.now(),
                                              ).then((value) {
                                                timeController.text = value
                                                    .format(context)
                                                    .toString();
                                                print(value.format(context));
                                              });
                                            },
                                            label: 'Task Time ',
                                            validate: (String value) {
                                              if (value.isEmpty) {
                                                return 'Time MustNot be Empty';
                                              }
                                              return null;
                                            }),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          elevation: 20.0)
                      .closed
                      .then((value) {
                    TodoAppCubit.get(context)
                        .bottomSheetChange(isShow: false, icon: Icons.edit);
                  });
                  TodoAppCubit.get(context)
                      .bottomSheetChange(isShow: true, icon: Icons.add);
                }
              },
              child: Icon(
                  TodoAppCubit.get(context).floatBottomIcon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              iconSize: 30.0,
              type: BottomNavigationBarType.fixed,
              currentIndex: TodoAppCubit.get(context).currentIndex,
              onTap: (index) {
                TodoAppCubit.get(context).changeState(index);
              },
              items: [
                BottomNavigationBarItem(label: 'TASKS', icon: Icon(Icons.menu)),
                BottomNavigationBarItem(
                    label: 'DONE', icon: Icon(Icons.done_all_rounded)),
                BottomNavigationBarItem(
                    label: 'ARCHIVED', icon: Icon(Icons.archive_outlined)),
              ],
            ),
          );
        },
      ),
    );
  }
}
