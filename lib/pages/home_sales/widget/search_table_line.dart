import 'package:flutter/material.dart';

class SearchTableWidget extends StatelessWidget {
  const SearchTableWidget({
    super.key,
    required this.gridHeight,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final Color colorLineBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: gridHeight * 2,
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
                  width: 80,
                  child: Text(
                    'Доб.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Text(
                      'Название',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Срок  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onPrimary,
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
