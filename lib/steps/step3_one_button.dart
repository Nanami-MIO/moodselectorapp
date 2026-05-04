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


class MoodPage extends StatefulWidget{
  const MoodPage({super.key});

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  String moodEmoji = '😀';
  String moodTitle = 'Happy Mood';s

  void changeMood(){
    setState((){
      moodEmoji = '😢';
      moodTitle = 'Sad Mood';
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Mood Selector Homepage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(moodEmoji, style: const TextStyle(fontSize: 100)),
            Text(moodTitle, style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 40),
            ElevatedButton(

            ),
          ],
        ),
      ),
    );
  }


}


