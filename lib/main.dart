import 'package:fila_quiz/loginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bank Sampah Indonesia",
      home: LoginPage()
    ); 
  }
}     