import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello Jenna,', style: TextStyle(fontSize: 25)),
              Text(
                'Lets start excercising',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
        ),

        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Card(
                  child: Padding(padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Hello"),
                    Text("des"),
                  ],
                ),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
