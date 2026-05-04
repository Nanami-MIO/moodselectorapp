import 'package:flutter/material.dart';

void main(){
  runApp(const MoodSelectorApp());
}

class MoodSelectorApp extends StatelessWidget{
  const MoodSelectorApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoodPage(),
    );
  }
}


class MoodPage extends StatelessWidget{
  const MoodPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Mood Selector Homepage")),
      body: const Center(
        child: Text(
          '😀',
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}

