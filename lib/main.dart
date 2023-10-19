import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/cubit/cart_cubit/cart_cubit.dart';
import 'package:new_app/cubit/favourite_cubit/favourite_cubit.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_cubit.dart';
import 'package:new_app/cubit/login_cubit/login_cubit.dart';
import 'package:new_app/screens/onBoarding_screen/onBoarding_screen.dart';
import 'package:new_app/screens/register_screen.dart';
import 'components/bloc_observer.dart';

void main() {
  Bloc.observer = SiBlocObsever();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
        BlocProvider(create: (BuildContext context ) => LogInCubit()),
        BlocProvider(create: (BuildContext context ) => HomePageCubit()),
        BlocProvider(create: (BuildContext context ) => CartCubit()),
        BlocProvider(create: (BuildContext context ) =>FavouriteCubit ()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
      ),
    );
  }
}