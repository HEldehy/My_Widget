import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwork/layouts/todoapp/todo_bloc/todo_states.dart';
import 'package:sqflite/sqflite.dart';
import '../newarchived.dart';
import '../newdone.dart';
import '../newtask.dart';
class TodoAppCubit extends Cubit<TodoAppStates>{
  TodoAppCubit(): super(TodoAppInitialState());
  static TodoAppCubit get(context)=>BlocProvider.of(context);
  Database database;
  int currentIndex = 0;
  bool isBottomSheetShow = false;
  IconData floatBottomIcon = Icons.edit;
  List<Map>tasks=[];
  List<Widget> screens = [
    NewTasks(),
    NewDone(),
    NewArchive(),
  ];
  List<String> titles =
  ['New Tasks',
   'New Done',
   'New Archive'
  ];
  void changeState(int index){
    currentIndex=index;
    emit(TodoAppChangeState());
  }

  void createDatabase() async {
    database = await openDatabase('todo.db', version: 1,
        onCreate: (database, version) {
          database
              .execute(
              'CREATE TABLE tasks(id INTEGER PRIMARY KEY,'
              'title TEXT,'
              'data TEXT,'
              'time TEXT,'
              'status TEXT)')
              .then((value) {})
              .catchError((error) {
            print('Error when creating ${error.toString()}');
          });
          print('data base create');
        }, onOpen: (database) {
      getDateFromDatabase(database).then((value){
        tasks=value;
        print(tasks);
        emit(TodoGetDatabaseState());
      });
          print('data base open');
        }).then((value){

          database=value;
          emit(TodoCreateDatabaseState());

    });
  }

   insertToDatabase({
    @required String title,
    @required String date,
    @required String time,
  }) async {
     await database.transaction((txn) async {
      txn.rawInsert(
        'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")',
      )
          .then((value) {
        print('$value inserted successfully');
        emit(TodoInsertDatabaseState());

        getDateFromDatabase(database).then((value){
          tasks=value;
          print(tasks);
          emit(TodoGetDatabaseState());
        });
      }).catchError((error) {
        print('Error When Insert Database ${error.toString()}');
      });
      return null;
    });
  }

  Future<List<Map>> getDateFromDatabase(database) async {
    print('data get');
    return await database.rawQuery('SELECT * FROM tasks');
  }

  void bottomSheetChange({
  @required bool isShow,
    @required IconData icon,
}){
    isBottomSheetShow=isShow;
    floatBottomIcon=icon;
    emit(TodoAppBottomSheetChangeState());

  }
}