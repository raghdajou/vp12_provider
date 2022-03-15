import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main () => runApp(MyApp());
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String message ='welcome 3';
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => message,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: AppBarTitle() ,
          ),
          body: ScaffoldBody( ) ,
        ),
      ),
    );
  }
}
class AppBarTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of <String>(context));
  }
}
class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<int>(
      create: (context) => 1,
      child: Column(
        children: [
          AppMessage(),
        ],
      ),
    );
  }
}
class AppMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of <int>(context).toString());
  }
}
