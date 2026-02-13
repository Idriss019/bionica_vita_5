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