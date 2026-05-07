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
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text('Mood Selector Homepage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(moodEmoji, style: const TextStyle(fontSize: 100)),
            Text(moodTitle, style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => selectMood('😀','HAPPY!'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[200],
                    foregroundColor: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('😀',style: TextStyle(fontSize: 28)),
                      Text('Good Mood',style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () => selectMood('😢','SAD…'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[200],
                    foregroundColor: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('😢',style: TextStyle(fontSize: 28)),
                      Text('Bad Mood',style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () => selectMood('😐','OK~'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    foregroundColor: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('😐',style: TextStyle(fontSize: 28)),
                      Text('Normal Mood',style: TextStyle(fontSize: 18)),
                    ],
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
