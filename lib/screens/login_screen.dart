import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/components/components.dart';
import 'package:new_app/cubit/login_cubit/login_cubit.dart';
import 'package:new_app/cubit/login_cubit/login_state.dart';
import 'package:new_app/screens/bottomNagiationScreen.dart';
import 'package:new_app/screens/onBoarding_screen/onBoarding_screen.dart';
import 'package:new_app/screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page_screen.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var emailLoginController = TextEditingController()..text;

  var passwordLoginController = TextEditingController()..text;
   final FocusNode focusNode1 =  FocusNode();
  final FocusNode focusNode2 =  FocusNode();

  var formLoginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LogInCubit(),
      child: BlocConsumer<LogInCubit, LogInStates>(
        listener: (context, state) {
          if (state is LogInPasswordSucessState) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomNavgitionBarScreen()));
          }

        },
        builder: (context, state) {

          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Center(
                  child: Form(
                    key: formLoginKey,
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(
                        'Enter to your account',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      TextFieldComponent(
                        focusNode: focusNode1,
                        controller: emailLoginController,
                        hintText: 'enter your email',
                        labelText: 'Email',
                        icon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.email),
                        ),

                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter vaild email';
                          }
                        },

                        obscureText: false,
                        keyboardType: TextInputType.emailAddress, onSubmited: (String ) {
                          FocusScope.of(context).requestFocus(focusNode2);

                      },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldComponent(
                        focusNode:focusNode2 ,
                        controller: passwordLoginController,
                        hintText: 'enter your password',
                        labelText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        icon: IconButton(
                          onPressed: () {
                            LogInCubit.get(context).isVisibility();
                          },
                          icon: LogInCubit.get(context).suffix,
                        ),
                        validation: (value) {
                          // if(value != passwordLoginController)
                          //   {
                          //     return 'Please enter correct password';
                          //   }
                          if (value!.isEmpty) {
                            return 'Please enter vaild password';
                          }
                        },
                        obscureText: LogInCubit.get(context).hidePassword, onSubmited: (String ) {  },
                      ),
                    state is LogInLoadingState? CircularProgressIndicator() : MaterialButton(
                              color: Colors.teal,
                              onPressed: () async {

                                if (formLoginKey.currentState!.validate()) {
                                  LogInCubit.get(context).loginPost(
                                      email: emailLoginController.text,
                                      password: passwordLoginController.text);
                                  //print('nameController ${nameController.text}');
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavgitionBar()));
                                }
                               final SharedPreferences sharedPreference = await  SharedPreferences.getInstance();
                                sharedPreference.setString('userName', emailLoginController.text);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
                              },
                              child: Text(
                                'LogIn',
                                style: TextStyle(color: Colors.black),
                              )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Do not have any account?'),
                          TextButton(
                              onPressed: () {


                                Navigator.pop(context);

                              },
                              child: Text(
                                'SignUp',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                    ]),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
