import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Laboratorul 2'),
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
  int _rez = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onChanged: (text) {
                  this._rez = 0;
                  List<String> _textul = text.split(" ");
                  _textul.forEach((element) {
                    if (element.contains('a') || element.contains('A')) {
                      setState(() {
                        this._rez++;
                      });
                    }
                  });
                },
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Introduceti textul:',
                  contentPadding: EdgeInsets.all(5.0),
                ),
                style: const TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_rez cuvinte contin 'a'",
              style: const TextStyle(fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
