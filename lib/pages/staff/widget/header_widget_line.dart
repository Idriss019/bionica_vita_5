import 'package:bionica_vita_5/pages/staff/widget/input_new_staff.dart';
import 'package:flutter/material.dart';

class HeaderWidgetLine extends StatelessWidget {
  const HeaderWidgetLine({
    super.key,
    required this.gridHeight,
    required this.leftRightMargin,
    required this.colorLineBorder,
  });

  final double gridHeight;
  final double leftRightMargin;
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
        margin: EdgeInsets.only(left: leftRightMargin),
        child: Row(
          children: [
            Container(
              width: 170,
              padding: EdgeInsets.only(right: leftRightMargin),
              child: InputNewStaffDialogWidget(),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Список пользователей',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              width: 170,
              padding: EdgeInsets.only(right: leftRightMargin),
              child: Row(
                children: [
                  Text('Логин: ', style: TextStyle(fontSize: 20)),
                  Text(
                    'admin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
