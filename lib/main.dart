import 'package:flutter/material.dart';
import 'package:flutter_application_13/presentation/screens/home_screen.dart';

void main(){
  runApp (const MyBro());
}
class MyBro extends StatelessWidget {
  const MyBro({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}