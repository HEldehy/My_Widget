import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  Widget defaultButton({
  double width=double.infinity,
  Color background= Colors.blue,
  double radius=0.0,
  bool isUpperCase=true,
  @required Function function,
  @required String text,
}) => Container(
    height: 50.0,
  width: width,
    decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(radius),
  color: background,
),
  child: MaterialButton(
         onPressed: function,
         child: Text(isUpperCase?text.toUpperCase(): text,
         style: TextStyle(
         color: Colors.white,
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
      ),),
  ),
);

  Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required IconData icon,
  @required String label,
  @required Function validate,
   Function onSubmit,
   Function onTap,
    Function suffixPressed,
    Function preffixPressed,
    bool isClick=true,

    IconData suffix,
   bool isPassword=false,
})=>TextFormField(
    controller: controller,
    onFieldSubmitted: onSubmit,
    onTap: onTap,
    enabled:isClick ,
    validator: validate,
    keyboardType: type,
    obscureText: isPassword,
    decoration: InputDecoration(
    labelText: label,
    border:OutlineInputBorder(
    borderRadius:  BorderRadius.circular(10.0),),
    prefixIcon: Icon(icon),
    suffixIcon: suffix!=null?IconButton(onPressed:suffixPressed ,icon: Icon(suffix)):null,


    ),
  );
  Widget buildTaskItem (Map model)=> Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          child: Text('${model['time']}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${model['title']}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            SizedBox(height: 5.0,),
            Text('${model['date']}',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),),

          ],)
      ],),
  );


