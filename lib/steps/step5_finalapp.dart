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
  String moodTitle = 'Happy Mood';

  void selectMood(String emoji, String title){
    setState((){
      moodEmoji = emoji;
      moodTitle = title;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => selectMood('😀','Happy Mood'),
                  child: const Text('Good'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => selectMood('😢','Sad Mood'),
                  child: const Text('Bad'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => selectMood('😊','Normal Mood'),
                  child: const Text('General'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => selectMood('😡','Angry Mood'),
                  child: const Text('😡\nAngry',
                    style: TextStyle(
                      fontSize: 10,
                      background: Paint()..color = Colors.orange,

                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
