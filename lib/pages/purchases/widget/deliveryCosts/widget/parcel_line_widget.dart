import 'package:flutter/material.dart';

class ParcelLineWidget extends StatelessWidget {
  const ParcelLineWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.colorLineBorder,
    required this.textStyle,
  });

  final double gridHeight;
  final double leftRightMargin;
  final Color colorLineBorder;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight - 20,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: leftRightMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: gridHeight,
              margin: EdgeInsets.only(
                // left: leftRightMargin,
                top: 10,
                bottom: 10,
              ),
              child: Icon(Icons.arrow_downward),
            ),
            Container(
              margin: EdgeInsets.only(left: leftRightMargin),
              child: Text(
                'Посылка отдельно',
                style: textStyle.copyWith(
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
            Container(
              height: gridHeight,
              margin: EdgeInsets.only(
                left: leftRightMargin,
                top: 10,
                bottom: 10,
              ),
              child: Icon(Icons.arrow_downward),
            ),
          ],
        ),
      ),
      // Center(
      //   child: RichText(
      //     text: TextSpan(
      //       // Базовый стиль (нормальный для стрелок)
      //       style: textStyle,
      //       children: [
      //         TextSpan(text: '⬇ '),
      //         TextSpan(
      //           text: 'Посылка отдельно',
      //           // Применяем курсив только к тексту
      //           style: textStyle.copyWith(
      //             fontSize: 28,
      //             fontStyle: FontStyle.italic,
      //             fontWeight: FontWeight.normal,
      //             color: Theme.of(context).colorScheme.onSecondary,
      //           ),
      //         ),
      //         TextSpan(text: ' ⬇'),
      //       ],
      //     ),
      //   ),
      // ),
      // ),
    );
  }
}
