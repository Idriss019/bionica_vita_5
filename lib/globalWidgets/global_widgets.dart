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