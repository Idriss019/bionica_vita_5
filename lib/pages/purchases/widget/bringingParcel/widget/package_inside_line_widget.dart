import 'package:flutter/material.dart';

class PackageInsideLineWidget extends StatelessWidget {
  const PackageInsideLineWidget({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.textStyle,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
  final TextStyle textStyle;
  final Color colorLineBorder;

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
        child: Center(
          child: RichText(
            text: TextSpan(
              // Базовый стиль (нормальный для стрелок)
              style: textStyle,
              children: [
                TextSpan(text: '⬇ '),
                TextSpan(
                  text: 'Посылка изнутри',
                  // Применяем курсив только к тексту
                  style: textStyle.copyWith(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                TextSpan(text: ' ⬇'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
