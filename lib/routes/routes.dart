import 'package:flutter_job/pages/auth.dart';
import 'package:flutter_job/pages/home.dart';
import 'package:flutter_job/pages/reg.dart';

final routes = {
  '/': (context) => const AuthPage(),
  '/reg': (context) => const RegistrationPage(),
  '/home': (context) => const HomePage(),
  '/auth':(context)=> const AuthPage(),
};