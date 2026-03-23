import 'package:bionica_vita_5/pages/staff/cubit/staff_cubit.dart';
import 'package:bionica_vita_5/pages/staff/widget/button_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'header_widget_line.dart';
import 'table_widget.dart';
import 'header2_widget.dart';
import 'table2_widget.dart';

class StaffPage extends StatefulWidget {
  const StaffPage({super.key});

  @override
  State<StaffPage> createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> {
  late StaffCubit staffCubit;
  @override
  void initState() {
    super.initState();
    staffCubit = context.read<StaffCubit>();
    staffCubit.loadStaffData();
  }

  @override
  Widget build(BuildContext context) {
    const double gridHeight = 70;
    const double leftRightMargin = 15;
    const double borderHeight = 50;
    final TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 25,
      color: Theme.of(context).colorScheme.onSecondary,
    );
    const Color colorLineBorder = Color.fromARGB(150, 112, 110, 0);
    // int myDate = 0;
    // dynamic Function(int) onDateChanged(int date) {
    //   return (int date) {
    //     myDate = date;
    //   };
    // }

    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          HeaderWidgetLine(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            colorLineBorder: colorLineBorder,
          ),
          TableWidget(
            gridHeight: gridHeight,
            colorLineBorder: colorLineBorder,
            staffCubit: staffCubit,
            textStyle: textStyle,
          ),
          Header2Widget(
            gridHeight: gridHeight,
            leftRightMargin: leftRightMargin,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
          Table2Widget(
            gridHeight: gridHeight,
            colorLineBorder: colorLineBorder,
          ),
          ButtonLineWidget(
            gridHeight: gridHeight,
            textStyle: textStyle,
            colorLineBorder: colorLineBorder,
          ),
        ],
      ),
    );
  }
}
