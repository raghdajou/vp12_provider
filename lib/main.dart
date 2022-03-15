import 'package:flutter/material.dart';
void main () => runApp(MyApp());
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   String message ='welcome home';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: AppBarTitle(message:message,) ,
        ),
        body: ScaffoldBody( message: message,) ,
      ),
    );
  }
}
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key , required this.message}) : super(key: key);
   final String message;
  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({Key? key , required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppMessage(message: message,),
      ],
    );
  }
}
class AppMessage extends StatelessWidget {
  const AppMessage({Key? key , required this.message }) : super(key: key);
   final String message;
  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}


