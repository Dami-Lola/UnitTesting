import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {

  String textHolder = 'We are here for the win';
  changeText() {
    setState(() {
      textHolder = 'All the way to the Top';
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page people'),
      ),
      body: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$textHolder'),
              SizedBox(height: 16,),
              ElevatedButton(
                key: Key('ChangeText'),
                child: Text ("Tap to Change text Value",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                style:
                ElevatedButton.styleFrom(primary: Colors.lightBlue[200]),
                onPressed: ()
                  => changeText()
              ),
            ],
          ),
      ),
    );
  }
}
