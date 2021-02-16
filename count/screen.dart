

import 'package:conter_app/count/minus.dart';
import 'package:conter_app/count/plus.dart';
import 'package:flutter/material.dart';
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
          SizedBox(height: 50,width: double.infinity,
          child: RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PlusCounter()));
            },
            child: Text("Increment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          
          ),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 50,width: double.infinity,
          child: RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MinusCounter()));
            },
          child: Text("Decrement",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
          ),
          ),
          )
        ],
      ),
    );
  }
}
