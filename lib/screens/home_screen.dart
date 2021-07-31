import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "初めまして";
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("trial app"),
        ),
        body: Column(
          children: [
            Text(_textHeader),
            TextField(
              keyboardType: TextInputType.text,
              controller: _textEditingController,
            ),
            ElevatedButton(
                onPressed: () => _onClick(), child: Text("ボタンを押してください"))
          ],
        ));
  }

  void _onClick() {
    setState(() {
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは$inputTextさん";
    });
  }
}
