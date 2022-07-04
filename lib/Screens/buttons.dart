
import 'package:find_app/Screens/large.dart';
import 'package:find_app/Screens/small.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  //const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
      child:
      Container(


        margin: EdgeInsets.all(25),
        child: Column(
          children: [


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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Large()));
                },
                child: Text("FIND LARGEST NUMBER",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ) ,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Small()));
                },
                child: Text("FIND SMALLEST NUMBER",
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
    );
  }
}
