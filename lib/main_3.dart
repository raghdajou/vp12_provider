import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main () => runApp(MyApp());
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String message ='welcome 3';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider< MessageProvider>(
      create: (context) => MessageProvider(),
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
    //return Text(Provider.of <String>(context));
    return Text(Provider.of <MessageProvider>(context).message);
  }
}
class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => 'Hello 3',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppMessage(),
          AppTextField()
        ],
      ),
    );
  }
}
class AppMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return Text(Provider.of <String>(context).toString());
    return Text(Provider.of <MessageProvider>(context).message);
  }
}
class AppTextField extends StatelessWidget {
  const AppTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value) {
        //TODO Implement Provider
       Provider.of <MessageProvider>(context,listen: false).changeMessage(value);
      },
    );
  }
}
class MessageProvider extends ChangeNotifier {
  String message ='Welcome Message';

  void changeMessage (String message){
    this.message=message;
 notifyListeners();
}
}

