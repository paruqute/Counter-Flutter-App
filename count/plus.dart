
import 'package:conter_app/main.dart';
import 'package:flutter/material.dart';

class PlusCounter extends StatefulWidget {
  @override
  _PlusCounterState createState() => _PlusCounterState();
}

class _PlusCounterState extends State<PlusCounter> {
 int _minus=0;
  int _plus=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment App"),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Touch the plus button ",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30
              ),),
              SizedBox(height: 50,),
              SizedBox(height: 50,width: 80,
              child: RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){

                  setState(() {
                     _plus++;
                  });
                },
              child: Text("Plus",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              ),
              ),
              SizedBox(height: 30,),
              Text(_plus.toString(),style: TextStyle(
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
              ),
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
                  child: Text("minus",
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

            ],
          ),
        ),
      ),
    );
  }
}
