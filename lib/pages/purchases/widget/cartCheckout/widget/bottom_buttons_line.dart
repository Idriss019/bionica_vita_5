import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:flutter/material.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({
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
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
              child: Container(
                margin: EdgeInsets.only(right: 8),
                height: double.infinity,
                // width: 200,
                child: CustomButton(
                  text: 'Оформить заказ',
                  textStyle: textStyle,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 30, left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Divider(
                      height: 2,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Divider(
                      height: 2,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                      margin: EdgeInsets.only(right: 15, left: 15),
                      width: 400,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Итого',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 38,
                            ),
                          ),
                          Text(
                            '=',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 230,
                            child: TextFieldCustomWithOutline(
                              textStyle: textStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
