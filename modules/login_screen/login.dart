
import 'package:flutter/material.dart';
import 'package:hardwork/shared/componenets/componentes.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  var formKey=GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              //key: ,
              child: Form(
                key: formKey,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login',
                    style: TextStyle(
                      fontSize:40.0,
                      fontWeight: FontWeight.w900,
                    ),),
                    SizedBox(height: 20.0,),
                    defaultFormField(controller: emailController,
                        type:TextInputType.emailAddress ,
                        icon: Icons.email,
                        label: 'Email Address',
                        validate: (String value){
                          if(value.isEmpty)
                          {
                            return 'Email Must Not Be Empty';
                          }
                          return null;

                        }),
                    SizedBox(height: 30.0,),

                    defaultFormField(controller: passwordController,
                        type: TextInputType.visiblePassword,
                        icon: Icons.lock,
                        label: 'Password',
                        isPassword: isPassword,
                        suffixPressed: (){
                      setState(() {
                        isPassword=!isPassword;
                      });

                        },
                        validate: (String value){
                          if(value.isEmpty)
                              {
                                return 'Password Is To Short';
                              }
                              return null;
                        },
                    suffix: isPassword?Icons.visibility:Icons.visibility_off),
                    SizedBox(height: 20.0,),
                    defaultButton(
                      function:(){
                        if(formKey.currentState.validate()){
                          print(emailController.text);
                          print(passwordController.text);

                        }

                    }, text: 'LOGIN',
                    radius: 10.0,
                    ),
                    SizedBox(height: 20.0,),
                    defaultButton(function: (){
                    }, text: 'Register',
                    radius: 10,),
                    SizedBox(height: 20.0,),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Don\'t have an account',),
                      TextButton(onPressed: (){}, child: Text('Register Now'))
                    ],)
                  ],),
              ),
            ),
          ),
        ),
      ),
    );
  }
}