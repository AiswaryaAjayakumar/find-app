
import 'package:find_app/Screens/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Find());
}
class Find extends StatelessWidget {
  //const Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         backgroundColor: Colors.deepPurpleAccent,
          title: Text("FIND APP",
          style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 40
          ),
          ),
        ),
        body:Button() ,
      ),
    );
  }
}
