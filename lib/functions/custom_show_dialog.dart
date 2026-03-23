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
            child: Text(
              'ОК',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void dialogNotPowers(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(child: Text('Внимание!', style: TextStyle(fontSize: 25))),
        content: SizedBox(
          height: 40,
          child: Center(
            child: Text(
              'Недостаточно прав, обратитесь к администратору',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'ОК',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
