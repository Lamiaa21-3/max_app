import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/cubit/register_cubit/register_cubit.dart';
import 'package:new_app/cubit/register_cubit/register_state.dart';
import 'package:new_app/screens/login_screen.dart';

import '../components/components.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();

  var emailCotroller = TextEditingController()..text;

  var passwordController = TextEditingController()..text;

  var conformPassworController = TextEditingController()..text;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is RegisterSuccesseState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LogIn()));
          }
        },
        builder: (context, state) {
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
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
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
                          keyboardType: TextInputType.text,
                          controller: nameController,
                          hintText: 'enter your name',
                          labelText: 'Full Name',
                          validation: (value) {
                            if (value!.isEmpty) {
                              return ('please enter your name');
                            }
                          },
                          obscureText: false,
                          icon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFieldComponent(
                          obscureText: false,
                          controller: emailCotroller,
                          hintText: 'enter your email',
                          labelText: 'Email',
                          icon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.email),
                          ),
                          validation: (value) {
                           // if(value != )
                            if (value!.isEmpty) {
                              return ('please enter your email');
                            }
                          }, keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFieldComponent(
                          keyboardType:TextInputType.visiblePassword ,
                          obscureText: RegisterCubit.get(context).hidePassword,
                          controller: passwordController,
                          hintText: 'enter your password',
                          labelText: 'Password',
                          icon: IconButton(
                            onPressed: () {
                              RegisterCubit.get(context).isVisibility();
                            },
                            icon: RegisterCubit.get(context).suffix,
                          ),
                          validation: (value) {
                            if (value!.isEmpty) {
                              return ('please enter your password');
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
                          validation: (value) {
                            if(value != passwordController.text)
                              {
                                return ('please enter your rigth conformPassword');
                              }
                            if (value!.isEmpty) {
                              return ('please enter your conformPassword');
                            }
                          },
                          obscureText: false,
                          icon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility),
                          ), keyboardType: TextInputType.visiblePassword,
                        ),
                        MaterialButton(
                            color: Colors.teal,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                RegisterCubit.get(context).registerPost(
                                    email: emailCotroller.text,
                                    password: passwordController.text,
                                    address: nameController.text,
                                    confirmPassword:
                                        conformPassworController.text);
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LogIn()));
                                },
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
        },
      ),
    );
  }
}
