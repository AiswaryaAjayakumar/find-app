
import 'package:find_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Small extends StatefulWidget {
  const Small({Key? key}) : super(key: key);

  @override
  State<Small> createState() => _SmallState();
}

class _SmallState extends State<Small> {
  TextEditingController unum1 =TextEditingController();
  TextEditingController unum2 =TextEditingController();
 double _check=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,

          title: Text("Smallest number",
            style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 40
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:
          Container(

            margin: EdgeInsets.all(25),
            child: Column(
              children: [

                SizedBox(height: 0,),
                TextField(
                  controller: unum1,
                  decoration: InputDecoration(
                    // hintText: "Book name",
                      labelText: "First number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: unum2,
                  decoration: InputDecoration(
                    //hintText: "Book name",
                      labelText: "Second number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(height: 50,
                  width: double.infinity,
                  child:
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    color: Colors.red,
                    onPressed: (){
                      var getUnum1=double.parse(unum1.text);
                      var getUnum2=double.parse(unum2.text);
                      print(_check);

                      setState(() {
                        _check=(getUnum1< getUnum2) ?getUnum1 : getUnum2;

                      });

                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Entry()));
                    },
                    child: Text("FIND SMALLEST NUMBER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ) ,
                ),

                Text(_check.toString()),

                SizedBox(height: 15,),
                SizedBox(height: 50,
                  width: double.infinity,
                  child:
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    color: Colors.red,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Find()));
                    },
                    child: Text("BACKTO MENU",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ) ,
                )
              ],
            ),

            // margin: EdgeInsets.all(18),

          ),
        ),
      ),
    );
  }
}
