import 'package:flutter/material.dart';

class BasisPage extends StatelessWidget {
  final Widget child;
  const BasisPage({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: Row(children: [
        //NavBar(), 
        Expanded(child: child)]),
    );
  }
}
