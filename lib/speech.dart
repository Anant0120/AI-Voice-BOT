import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:http/http.dart' as http;
import 'package:flutter_tts/flutter_tts.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice',
      theme: ThemeData.dark(), // Set the theme to dark
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FlutterTts tts = FlutterTts();
  stt.SpeechToText _speechToText = stt.SpeechToText();
  String recognizedWords = '';
  String answer = '';
  bool isListening = false;
  bool isAnswerPlaying = false;
  TextEditingController questionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _speechToText.initialize();
    wishMe();
  }

  void wishMe() async {
    DateTime now = DateTime.now();
    int hour = now.hour;

    String greeting = '';

    if (hour >= 0 && hour < 12) {
      greeting = 'Good Morning';
    } else if (hour >= 12 && hour < 18) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }

    String text = '$greeting. How can I assist you';

    await tts.speak(text);
  }

  void startListening() {
    _speechToText.listen(
      onResult: (result) {
        setState(() {
          recognizedWords = result.recognizedWords;
        });
        if (result.finalResult) {
          setState(() {
            isListening = false;
          });
          handleQuestion(recognizedWords);
        }
      },
    );
    setState(() {
      isListening = true;
    });
  }

  void stopListening() {
    _speechToText.stop();
    setState(() {
      isListening = false;
    });
  }

  void startAnswerPlayback() async {
    setState(() {
      isAnswerPlaying = true;
    });
    await tts.speak(answer);
    setState(() {
      isAnswerPlaying = false;
    });
  }

  void stopAnswerPlayback() async {
    await tts.stop();
    setState(() {
      isAnswerPlaying = false;
    });
  }

  void handleQuestion(String question) async {
    var url = Uri.parse('http://172.20.10.3:5000/generate'); //  EC2 instance's public IPv4 address

    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'input_text': question}),
    );

    if (response.statusCode == 200) {
      setState(() {
        answer = jsonDecode(response.body)['response'];
      });
    } else {
      setState(() {
        answer = 'No answer found';
      });
    }

    startAnswerPlayback();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Expanded app bar height
        child: AppBar(
          title: TypingText(),
          backgroundColor: Colors.black,
          // Use TypingText widget for typing animation
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              recognizedWords,
              style: TextStyle(fontSize: 18, fontFamily: 'Arial'),
            ),
            SizedBox(height: 20),
            Text(
              'Answer:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    answer,
                    style: TextStyle(fontSize: 18, fontFamily: 'Arial'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Text field for typing a question
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: questionController,
                decoration: InputDecoration(
                  labelText: 'Type your question',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Button to send the typed question
            ElevatedButton(
              onPressed: () {
                handleQuestion(questionController.text);
                questionController.clear();
              },
              child: Text('Send'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            ),

            SizedBox(height: 20),
            isListening
                ? ElevatedButton.icon(
              onPressed: () {
                stopListening();
              },
              icon: Icon(Icons.stop),
              label: Text('Stop Listening'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Set the button color to black
              ),
            )
                : ElevatedButton.icon(
              onPressed: startListening,
              icon: Icon(Icons.mic),
              label: Text('Start Listening'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Set the button color to black
              ),
            ),
            SizedBox(height: 20),
            isAnswerPlaying
                ? ElevatedButton.icon(
              onPressed: () {
                stopAnswerPlayback();
              },
              icon: Icon(Icons.stop),
              label: Text('Stop Answer'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Set the button color to black
              ),
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class TypingText extends StatefulWidget {
  @override
  _TypingTextState createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  String _text = '';
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    const String targetText = '\nAsk a Question !';
    const Duration typingDuration = Duration(milliseconds: 100); // Adjust typing speed

    Timer.periodic(typingDuration, (Timer timer) {
      if (_index < targetText.length) {
        setState(() {
          _text = targetText.substring(0, _index + 1);
          _index++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(fontSize: 27),
    );
  }
}
