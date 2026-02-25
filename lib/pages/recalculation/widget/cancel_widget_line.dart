import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class CancelWidgetLine extends StatelessWidget {
  const CancelWidgetLine({
    super.key,
    required this.gridHeight,
    required this.textStyle,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final TextStyle textStyle;
  final Color colorLineBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 120,
          top: 10,
          bottom: 10,
          right: 120,
        ),
        child: CustomButton(
          text: 'Отменить',
          textStyle: textStyle,
          onPressed: () {},
        ),
      ),
    );
  }
}
