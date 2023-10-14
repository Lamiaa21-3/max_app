import 'package:flutter/material.dart';
import 'package:new_app/components/components.dart';
import 'package:new_app/screens/register_screen.dart';

import 'home_page_screen.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);
  var emailLoginController = TextEditingController()..text;
  var passwordLoginController =TextEditingController()..text;
  var formLoginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
       leading: IconButton(
       onPressed: (){
         Navigator.pop(context);
       },
         icon: Icon(Icons.arrow_back,color: Colors.black,),

        ),
      ),
    //   body: SingleChildScrollView(
    //     child: Center(
    //       child: Form(
    //         key: formLoginKey,
    //         child: Column(
    //           children: [
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Text(
    //               'Welcome',
    //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    //             ),
    //             Text(
    //               'Enter to your account',
    //               style: TextStyle(fontSize: 20, color: Colors.grey),
    //             ),
    //             TextFieldComponent(
    //                 controller: emailLoginController,
    //                 hintText: 'enter your email',
    //                 labelText: 'Email',
    //                 icon: Icon(Icons.email),
    //                 validation: (value) {
    //                   if(value!.isEmpty)
    //                     {
    //                       return 'Please enter vaild email';
    //                     }
    //                 }),
    //             SizedBox(height: 10,),
    //             TextFieldComponent(
    //                 controller: passwordLoginController,
    //                 hintText: 'enter your password',
    //                 labelText: 'Password',
    //                 icon: Icon(Icons.visibility),
    //                 validation: (value) {
    //                   if(value!.isEmpty)
    //                     {
    //                       return 'Please enter vaild password';
    //                     }
    //                 }),
    //         MaterialButton(
    //             color: Colors.teal,
    //             onPressed: () {
    //               if(formLoginKey.currentState!.validate())
    //               {
    //                 //print('nameController ${nameController.text}');
    //                 Navigator.push(
    //                     context,
    //                     MaterialPageRoute(builder: (context) =>  HomePageScreen())
    //                 );
    //               }
    //             },
    //             child: Text(
    //               'LogIn',
    //               style: TextStyle(color: Colors.black),
    //             )),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text('Do not have any account?'),
    //             TextButton(
    //                 onPressed: () {},
    //                 child: Text(
    //                   'SignUp',
    //                   style: TextStyle(color: Colors.black),
    //                 )),
    //           ],
    //         ),
    //         ]
    //     ),
    //       ),
    // ),
    //   )
    );
  }
}
