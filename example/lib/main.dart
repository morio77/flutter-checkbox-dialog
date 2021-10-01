import 'package:flutter/material.dart';

import 'package:flutter_checkbox_dialog/flutter_checkbox_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            await FlutterCheckboxDialog().showCheckboxDialog(context);
          },
          child: const Text('ダイアログを開く'),
        ),
      ),
    );
  }
}
