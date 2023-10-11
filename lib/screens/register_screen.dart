import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/screens/login_screen.dart';

import '../components/components.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
 final TextEditingController nameController = TextEditingController();
  var emailCotroller = TextEditingController()..text;
  var passwordController = TextEditingController()..text;
  var conformPassworController = TextEditingController()..text;
  var formKey = GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Register Screen",
          style: TextStyle(color: Colors.black),

        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: formKey,
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create your new account',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFieldComponent(
                    controller: nameController,
                    hintText: 'enter your name',
                    labelText: 'Full Name',
                    icon: Icon(Icons.person), validation: (value ) {
                      if(value!.isEmpty)
                        {
                         return('please enter your name');
                        }
                  },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldComponent(
                    controller: emailCotroller,
                    hintText: 'enter your email',
                    labelText: 'Email',
                    icon: Icon(Icons.email), validation: (value ) {
                    if(value!.isEmpty)
                    {
                      return('please enter your email');
                    }
                  },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldComponent(
                    controller: passwordController,
                    hintText: 'enter your password',
                    labelText: 'Password',
                    icon: Icon(Icons.visibility), validation: (value ) {
                    if(value!.isEmpty)
                    {
                      return('please enter your password');
                    }
                  },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldComponent(
                    controller: conformPassworController,
                    hintText: 'enter your conformPassword',
                    labelText: 'conformPassword',
                    icon: Icon(Icons.visibility), validation: (value ) {
                    if(value!.isEmpty)
                    {
                      return('please enter your conformPassword');
                    }
                  },
                  ),
                  MaterialButton(
                      color: Colors.teal,
                      onPressed: () {
                        if(formKey.currentState!.validate())
                          {
                            print('nameController ${nameController.text}');
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LogIn())
                            );
                          }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.black),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('aready you have account?'),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
