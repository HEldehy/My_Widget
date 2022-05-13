import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardwork/model/usermodel.dart';

class DataModel extends StatelessWidget{
  List<UserModel>users=[
    UserModel(
      id: 1,
      name: 'Ahmed',
      phone: '01225465342',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '0125255465342',
    ),
    UserModel(
      id: 3,
      name: 'mahmoud',
      phone: '3542243534241',
    ),
    UserModel(
      id: 1,
      name: 'Ahmed',
      phone: '01225465342',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '0125255465342',
    ),
    UserModel(
      id: 3,
      name: 'mahmoud',
      phone: '3542243534241',
    ),
    UserModel(
      id: 1,
      name: 'Ahmed',
      phone: '01225465342',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '0125255465342',
    ),
    UserModel(
      id: 3,
      name: 'mahmoud',
      phone: '3542243534241',
    ),
    UserModel(
      id: 1,
      name: 'Ahmed',
      phone: '01225465342',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed',
      phone: '0125255465342',
    ),
    UserModel(
      id: 3,
      name: 'mahmoud',
      phone: '3542243534241',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( 'Users',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0,
            end: 5.0),
            child: Container(

              color: Colors.grey[400],
              height: 1.0,
              width: double.infinity,
            ),
          ),
          itemCount: users.length),

    );

  }
  buildUserItem(UserModel model)=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(

      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 25.0,
          child: Text('${model.id}',
            style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 15.0,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${model.name}',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0),),
            SizedBox(height: 5.0),
            Text('${model.phone}',
              style: TextStyle(color: Colors.grey,
                  fontSize: 15.0),),
            SizedBox(height: 5.0),
          ],),
      ],),
  );
}