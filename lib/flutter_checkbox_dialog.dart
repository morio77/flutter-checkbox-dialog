import 'package:flutter/material.dart';

class FlutterCheckboxDialog {
  Future<void> showCheckboxDialog(BuildContext context) async {
    final result = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return const _AlertDialog();
      },
    );
  }
}

class _AlertDialog extends StatefulWidget {
  const _AlertDialog({Key? key}) : super(key: key);

  @override
  _AlertDialogState createState() => _AlertDialogState();
}

class _AlertDialogState extends State<_AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('アラートダイアログ'),
      content: const Text('アラートダイアログの中身'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('閉じる'),
        )
      ],
    );
  }
}
