import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Text to Speech Converter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                controller: _mycontroller,
                decoration: InputDecoration(
                 suffixIcon: Icon(Icons.text_snippet),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    ),

                  ),
                  labelText: "Enter your Text",
                  hintText: "Enter your Text"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: (){
                txt_to_speecch(_mycontroller.text.toString());
              },
                  child: Text("Text To Speech")),
            )
          ],
        ),
      )
    );

  }

  void txt_to_speecch(String txt){

    TextToSpeech tts = TextToSpeech();

    String text = "Hello, Good Morning! Dinkar ? How are you";
    tts.speak(txt);
    double volume = 1.0;
    tts.setVolume(volume);
    String language = 'en-US';
    tts.setLanguage(language);

  }
}
