import 'package:flutter/material.dart';
import 'package:new_app/screens/register_screen.dart';

import '../components/components.dart';
import '../cubit/register_cubit/register_cubit.dart';

class PersonalScreen extends StatelessWidget {
  PersonalScreen({Key? key}) : super(key: key);
  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController conformNewPassword = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFieldComponent(
            focusNode: focusNode1,
            controller: oldPassword,
            hintText: 'enter your Oldpassword',
            labelText: '',
            keyboardType: TextInputType.visiblePassword,
            icon: IconButton(onPressed: () {
              RegisterCubit.get(context).isVisibility();
            },  icon: RegisterCubit.get(context).suffix,
            ),
            validation: (value) {
              if (value!.isEmpty) {
                return 'Please enter vaild old password';
              }
            },
            onSubmited: (String) {
              FocusScope.of(context).requestFocus(focusNode2);
            },
            obscureText: false,
          ),
          SizedBox(
            height: 15,
          ),
          TextFieldComponent(
            focusNode: focusNode2,
            controller: newPassword,
            hintText: 'enter your New password',
            labelText: '',
            keyboardType: TextInputType.visiblePassword,
            icon: IconButton(onPressed: () {
              RegisterCubit.get(context).isVisibility();
            },  icon: RegisterCubit.get(context).suffix,
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
            obscureText: false,
            onSubmited: (String) {
              FocusScope.of(context).requestFocus(focusNode3);
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextFieldComponent(
            focusNode: focusNode3,
            controller: conformNewPassword,
            hintText: 'enter yourConform  password',
            labelText: '',
            keyboardType: TextInputType.visiblePassword,
            icon: IconButton(onPressed: () {
              RegisterCubit.get(context).isVisibility();
            },  icon: RegisterCubit.get(context).suffix,
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
            obscureText: false,
            onSubmited: (String) {},
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 120,
            color: Colors.teal[800],
            child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
