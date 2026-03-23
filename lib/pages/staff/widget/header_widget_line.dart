import 'package:bionica_vita_5/pages/password/cubit/password_cubit.dart';
import 'package:bionica_vita_5/pages/staff/cubit/staff_cubit.dart';
import 'package:bionica_vita_5/pages/staff/widget/input_new_staff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderWidgetLine extends StatefulWidget {
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
  State<HeaderWidgetLine> createState() => _HeaderWidgetLineState();
}

class _HeaderWidgetLineState extends State<HeaderWidgetLine> {
  late PasswordCubit passwordCubit;
  // late StaffCubit staffCubit;

  // final passwordController = TextEditingController();
  // var _isObscured = true;

  @override
  void initState() {
    super.initState();
    passwordCubit = context.read<PasswordCubit>();
    // staffCubit = context.read<StaffCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.gridHeight,
      decoration: BoxDecoration(
        border: Border.all(color: widget.colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: widget.leftRightMargin),
        child: Row(
          children: [
            Container(
              width: 170,
              padding: EdgeInsets.only(right: widget.leftRightMargin),
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
              padding: EdgeInsets.only(right: widget.leftRightMargin),
              child: Row(
                children: [
                  Text('Логин: ', style: TextStyle(fontSize: 20)),
                  BlocBuilder<PasswordCubit, PasswordState>(
                    builder: (context, state) {
                      return Text(
                        state.login,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
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
