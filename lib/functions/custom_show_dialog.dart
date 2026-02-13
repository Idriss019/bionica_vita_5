import 'package:flutter/material.dart';

void showDialogOk(BuildContext context, {String? title, String? content}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: title == null ? null : Text(title),
        content: content == null ? null : Text(content),
        actions: [
          TextButton(
            child: Text('ОК', style: TextStyle(fontSize: 25)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
