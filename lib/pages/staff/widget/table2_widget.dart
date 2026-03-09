import 'package:flutter/material.dart';

class Table2Widget extends StatelessWidget {
  const Table2Widget({
    super.key,
    required this.gridHeight,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final Color colorLineBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight * 5,
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              border: Border.all(width: 1),
            ),
            width: double.infinity,
            height: 45,
            child: Row(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    'Полномочия',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),

                SizedBox(
                  width: 25,
                  child: Text(
                    'Раз',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    'Страница',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Text(
                      'Полное описание',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
