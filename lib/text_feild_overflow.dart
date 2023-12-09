import 'package:flutter/material.dart';

class TextFieldOverFlowPage extends StatefulWidget {
  const TextFieldOverFlowPage({super.key});

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldOverFlowPage> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Text Field Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue, // 배경 색상
              height: 500.0, // 원하는 세로 크기// 크기를 지정하고자 하는 실제 위젯을 추가합니다.
            ),
            TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(
                labelText: 'Enter some text',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Access the entered text using _textFieldController.text
                String enteredText = _textFieldController.text;
                // You can do something with the entered text
                print('Entered Text: $enteredText');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _textFieldController.dispose();
    super.dispose();
  }
}
