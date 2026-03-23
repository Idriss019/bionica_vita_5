import 'package:bionica_vita_5/globalWidgets/custom_color_button.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    required this.textStyle,
    this.labelText,
    this.enabled = true,
    this.labelStyle = const TextStyle(color: Colors.white),
  });

  final TextStyle textStyle;
  final bool enabled;
  final String? labelText;
  final TextStyle labelStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle,
      cursorColor: Theme.of(context).colorScheme.onSecondary,

      decoration: InputDecoration(
        enabled: enabled,
        labelText: labelText,
        labelStyle: labelStyle,
        // helperStyle: const TextStyle(color: Colors.black),
        // labelStyle: labelStyle,
        // labelStyle: labelStyle,
        contentPadding: EdgeInsets.only(
          top: 0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}

class TextFieldCustom2 extends StatefulWidget {
  const TextFieldCustom2({
    super.key,
    required this.textStyle,
    this.text,
    this.enabled = true,
    this.labelStyle = const TextStyle(color: Colors.white),
  });

  final TextStyle textStyle;
  final bool enabled;
  final String? text;
  final TextStyle labelStyle;

  @override
  State<TextFieldCustom2> createState() => _TextFieldCustom2State();
}

class _TextFieldCustom2State extends State<TextFieldCustom2> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.text);
    _focusNode = FocusNode();

    // Добавляем слушатель фокуса
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        // Выделяем весь текст при фокусе
        _controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: _controller.text.length,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: TextEditingController(text: widget.text),
      style: widget.textStyle.copyWith(fontSize: 16),
      cursorColor: Theme.of(context).colorScheme.onSecondary,
      controller: _controller,
      focusNode: _focusNode,
      // selectAllOnFocus: true,
      // focusNode: FocusNode()
      //   ..addListener(() {
      //     if (FocusNode().hasFocus) {
      //       // Выделяем весь текст при фокусе
      //       TextEditingController(text: widget.text).selection = TextSelection(
      //         baseOffset: 0,
      //         extentOffset: TextEditingController(text: widget.text).text.length,
      //       );
      //     }
      //   }),
      decoration: InputDecoration(
        enabled: widget.enabled,
        // labelText: labelText,
        labelStyle: widget.labelStyle,
        // helperStyle: const TextStyle(color: Colors.black),
        // labelStyle: labelStyle,
        // labelStyle: labelStyle,
        contentPadding: EdgeInsets.only(
          top: 0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}

class TextFieldCustomWithOutline extends StatelessWidget {
  const TextFieldCustomWithOutline({
    super.key,
    required this.textStyle,
    this.labelText,
    this.enabled = true,
    this.labelStyle = const TextStyle(color: Colors.white),
  });

  final TextStyle textStyle;
  final bool enabled;
  final String? labelText;
  final TextStyle labelStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle,
      cursorColor: Theme.of(context).colorScheme.onSecondary,
      decoration: InputDecoration(
        enabled: enabled,
        labelText: labelText,
        // labelStyle: labelStyle,
        contentPadding: EdgeInsets.only(
          top: 0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(
        //     color: Theme.of(context).colorScheme.onSecondary,
        //     width: 1.5,
        //   ),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Theme.of(context).colorScheme.onSecondary,
        //     width: 1.5,
        //   ),
        // ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textStyle,
    required this.onPressed,
  });

  final String text;
  final TextStyle textStyle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: CustomColorButton(
          Theme.of(context).colorScheme.onSecondary,
          Theme.of(context).colorScheme.outline,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
      iconSize: 45,
      padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 3),
      color: Theme.of(context).colorScheme.onPrimary,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: CustomColorButton(
          Theme.of(context).colorScheme.onSecondary,
          Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }
}

void customDialog(
  BuildContext context,
  Function() onPressed, {
  String? title,
  String? content,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: title == null ? null : Text(title),
        content: content == null ? null : Text(content),
        actions: [
          Row(
            children: [
              CustomButton(
                text: 'Да',
                textStyle: TextStyle(fontSize: 18),
                onPressed: onPressed,
              ),
              CustomButton(
                text: 'Нет',
                textStyle: TextStyle(fontSize: 18),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}

void textFieldDialog(
  BuildContext context,
  TextStyle textStyle,
  Function() onPressed, {
  String? title,
  String? content,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: title == null ? null : Center(child: Text(title)),
        content: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          // height: 100,
          width: 300,
          child: TextFieldCustom2(textStyle: textStyle, text: content),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                text: 'Да',
                textStyle: TextStyle(fontSize: 18),
                onPressed: onPressed,
              ),
              CustomButton(
                text: 'Нет',
                textStyle: TextStyle(fontSize: 18),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}

// class TextFieldCustomWithOutline extends StatelessWidget {
//   const TextFieldCustomWithOutline({
//     super.key,
//     required this.textStyle,
//     this.labelText,
//     this.enabled = true,
//     this.labelStyle = const TextStyle(color: Colors.white),
//   });

//   final TextStyle textStyle;
//   final bool enabled;
//   final String? labelText;
//   final TextStyle labelStyle;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       style: textStyle,
//       decoration: InputDecoration(
//         enabled: enabled,
//         labelText: labelText,
//         contentPadding: EdgeInsets.only(
//           top: 0,
//           bottom: 10,
//           left: 10,
//           right: 10,
//         ),
//       ),
//     );
//   }
// }
