import 'package:conter_app/main.dart';
import 'package:flutter/material.dart';
class MinusCounter extends StatefulWidget {
  @override
  _MinusCounterState createState() => _MinusCounterState();
}

class _MinusCounterState extends State<MinusCounter> {
  int _minus=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Decrement App")
          ),
      body:Container(
      margin: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(height: 50,width: 90,
              child: RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){

                  setState(() {
                    _minus--;
                  });
                },
                child: Text("Minus",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(_minus.toString(),style: TextStyle(
                color: Colors.blue,
                fontSize: 30
            ),),

            SizedBox(height: 20,),
            SizedBox(height: 50,width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                },
                child: Text("Goto Menu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
              ),
            )
          ],
        ),
      ),
        )



    );
  }
}
