
import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {

  TextEditingController myName = TextEditingController();
  String? name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Name"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90, horizontal:30 ),
          child: Column(
            children: [
              Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    controller: myName,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Please enter your name"
                    ),
                  ),
              ),
              SizedBox(height: 20,),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    name = myName.text;
                    debugPrint(name);
                  });
                },
                child: Text("Show Name"),
                ),
                SizedBox(height: 30,),
              Text("Your name is: ${name.toString()}", style: TextStyle(
                color: Colors.red
              ),),
            ],
          ),
          
        ),
      ),
    );
  }
}