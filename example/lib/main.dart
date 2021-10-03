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
      title: 'sample_flutter_checkbox_dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sample_flutter_checkbox_dialog'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            await FlutterCheckboxDialog().showCheckboxDialog(
              context,
              checkboxValue,
              const Text('次回から確認しない'),
              _onChanged,
              title: const Text('確認ダイアログ'),
            );
          },
          child: const Text('ダイアログを開く'),
        ),
      ),
    );
  }

  void _onChanged(bool value) {
    setState(() {
      checkboxValue = value;
    });
  }
}
