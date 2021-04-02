import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'Mcdonald\'s',
    'Subway',
    'Pizza Hut',
    'Barbaque Nation',
    'Milan Fastfood'
  ];

  int currIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Restaurant Picker")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('What do you want to eat?'),
              if(currIndex != null) 
                Text(
                  restaurants[currIndex], 
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center
                ),
              SizedBox(height: 40),
              TextButton(
                onPressed: (){
                  updateIndex();
                }, 
                child: Text("Pick Restaurant"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.teal,
                  onSurface: Colors.grey,
                )
              )
            ],
          )
        )  
      )
    );
  }
  
  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currIndex = index;
    });
  }
}