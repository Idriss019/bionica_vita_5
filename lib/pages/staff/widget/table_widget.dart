import 'package:bionica_vita_5/globalWidgets/global_widgets.dart';
import 'package:bionica_vita_5/pages/staff/cubit/staff_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:string_capitalize/string_capitalize.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({
    super.key,
    required this.gridHeight,
    required this.colorLineBorder,
    required this.staffCubit,
    required this.textStyle,
  });

  final double gridHeight;
  final Color colorLineBorder;
  final StaffCubit staffCubit;
  final TextStyle textStyle;

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  bool isObscured = true;
  final inputPasswordController = TextEditingController();
  final retryPasswordController = TextEditingController();

  @override
  void dispose() {
    inputPasswordController.dispose();
    retryPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.gridHeight * 3,
      decoration: BoxDecoration(
        border: Border.all(color: widget.colorLineBorder, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SingleChildScrollView(
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
                    width: 200,
                    child: Text(
                      'Должность',
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
                        'Логин',
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
                    width: 100,
                    child: Text(
                      'Пароль',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Код доступа',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(
                      'Уд.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  // Expanded(
                  //   // height: 30,
                  //   // width: double.infinity,
                  //   child: ListView.builder(
                  //     itemCount: 2,
                  //     itemBuilder: (context, index) {
                  //       return SizedBox(
                  //         height: 30,
                  //         child: Row(
                  //           children: [
                  //             SizedBox(
                  //               width: 200,
                  //               child: Text(
                  //                 'Должность',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   fontSize: 14,
                  //                   color: Theme.of(
                  //                     context,
                  //                   ).colorScheme.onPrimary,
                  //                 ),
                  //               ),
                  //             ),
                  //             Expanded(
                  //               child: SizedBox(
                  //                 child: Text(
                  //                   'Логин',
                  //                   textAlign: TextAlign.center,
                  //                   maxLines: 1,
                  //                   style: TextStyle(
                  //                     fontSize: 18,
                  //                     color: Theme.of(
                  //                       context,
                  //                     ).colorScheme.onPrimary,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               width: 100,
                  //               child: Text(
                  //                 'Пароль',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   fontSize: 14,
                  //                   color: Theme.of(
                  //                     context,
                  //                   ).colorScheme.onPrimary,
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               width: 200,
                  //               child: Text(
                  //                 'Код доступа',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   fontSize: 14,
                  //                   color: Theme.of(
                  //                     context,
                  //                   ).colorScheme.onPrimary,
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               width: 80,
                  //               child: Text(
                  //                 'Уд.',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   fontSize: 16,
                  //                   color: Theme.of(
                  //                     context,
                  //                   ).colorScheme.onPrimary,
                  //                 ),
                  //               ),
                  //             ),
                  //             Container(
                  //               decoration: BoxDecoration(
                  //                 color: Theme.of(
                  //                   context,
                  //                 ).colorScheme.onSecondary,
                  //                 borderRadius: BorderRadius.only(
                  //                   topLeft: Radius.circular(10),
                  //                   topRight: Radius.circular(10),
                  //                 ),
                  //                 border: Border.all(width: 1),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
            BlocBuilder<StaffCubit, StaffState>(
              builder: (context, state) {
                return Column(
                  children: state.staffData.map((staff) {
                    return Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: widget.colorLineBorder,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          CustomCell(
                            width: 200,
                            textStyle: widget.textStyle,
                            text: staff.position,
                            title: "Должность",
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Text(
                                staff.login.capitalizeEach(),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSecondary,
                                ),
                              ),
                            ),
                          ),
                          // CustomCell(
                          //   width: 100,
                          //   textStyle: textStyle,
                          //   text: '••••', //staff.password,
                          //   title: "Пароль",
                          // ),
                          SizedBox(
                            width: 100,
                            child: TextButton(
                              onPressed: () => showDialog(
                                context: context,
                                builder: (context) {
                                  return StatefulBuilder(
                                    builder: (context, setState) {
                                      return AlertDialog(
                                        content: Text(
                                          'Введите пароль для пользователя ${staff.login}',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        actions: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                width: 300,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Пароль :',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    SizedBox.fromSize(
                                                      size: Size(10, 0),
                                                    ),
                                                    Expanded(
                                                      child: TextField(
                                                        obscureText: isObscured,
                                                        controller:
                                                            inputPasswordController,
                                                        cursorColor:
                                                            Theme.of(context)
                                                                .colorScheme
                                                                .onSecondary,
                                                        textAlign:
                                                            TextAlign.center,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters:
                                                            <
                                                              TextInputFormatter
                                                            >[
                                                              FilteringTextInputFormatter
                                                                  .digitsOnly,
                                                            ], // С таким фильтром могут быть введены только числа
                                                        decoration: InputDecoration(
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color:
                                                                  Theme.of(
                                                                        context,
                                                                      )
                                                                      .colorScheme
                                                                      .onSecondary,
                                                              width: 1.5,
                                                            ),
                                                          ),

                                                          suffixIcon: IconButton(
                                                            icon: Icon(
                                                              isObscured
                                                                  ? Icons
                                                                        .visibility_off
                                                                  : Icons
                                                                        .visibility,
                                                            ),
                                                            onPressed: () {
                                                              setState(() {
                                                                isObscured =
                                                                    !isObscured;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 300,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Повторить :',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    SizedBox.fromSize(
                                                      size: Size(10, 0),
                                                    ),
                                                    Expanded(
                                                      child: TextField(
                                                        obscureText: isObscured,
                                                        controller:
                                                            retryPasswordController,
                                                        cursorColor:
                                                            Theme.of(context)
                                                                .colorScheme
                                                                .onSecondary,
                                                        textAlign:
                                                            TextAlign.center,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters:
                                                            <
                                                              TextInputFormatter
                                                            >[
                                                              FilteringTextInputFormatter
                                                                  .digitsOnly,
                                                            ], // С таким фильтром могут быть введены только числа
                                                        decoration: InputDecoration(
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color:
                                                                  Theme.of(
                                                                        context,
                                                                      )
                                                                      .colorScheme
                                                                      .onSecondary,
                                                              width: 1.5,
                                                            ),
                                                          ),

                                                          suffixIcon: IconButton(
                                                            icon: Icon(
                                                              isObscured
                                                                  ? Icons
                                                                        .visibility_off
                                                                  : Icons
                                                                        .visibility,
                                                            ),
                                                            onPressed: () {
                                                              setState(() {
                                                                isObscured =
                                                                    !isObscured;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  /* кнопка отмены */
                                                  TextButton(
                                                    onPressed: () {
                                                      clearInputControllers();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Отмена',
                                                      style: TextStyle(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSecondary,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  /*  кнопка принятия */
                                                  TextButton(
                                                    onPressed: () async {
                                                      String message = '';
                                                      if (inputPasswordController
                                                              .text
                                                              .isEmpty ||
                                                          retryPasswordController
                                                              .text
                                                              .isEmpty) {
                                                        message =
                                                            'Пожалуйста, заполните оба поля.';
                                                      } else if (inputPasswordController
                                                              .text !=
                                                          retryPasswordController
                                                              .text) {
                                                        message =
                                                            'Пароли не совпадают. Пожалуйста, попробуйте снова.';
                                                      }
                                                      if(inputPasswordController
                                                              .text.length < 4 ){
                                                        message = 'Пароль должен содержать не менее 4 символа';
                                                              }
                                                      if (message.isNotEmpty) {
                                                        ScaffoldMessenger.of(
                                                          context,
                                                        ).showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              message,
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                            duration: Duration(
                                                              seconds: 2,
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }
                                                    },
                                                    child: Text(
                                                      'Добавить',
                                                      style: TextStyle(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSecondary,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                              child: Text(
                                '••••',
                                style: widget.textStyle.copyWith(
                                  fontSize: 18,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSecondary,
                                ),
                              ), //staff.password,
                            ),
                          ),
                          CustomCell(
                            width: 200,
                            textStyle: widget.textStyle,
                            text: staff.powersString,
                            title: "Код доступа",
                          ),

                          // SizedBox(
                          //   width: 200,
                          //   child: Text(
                          //     staff.powersString,
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       fontSize: 14,
                          //       color: Theme.of(context).colorScheme.onPrimary,
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: 80,
                            child: IconButton(
                              color: Theme.of(context).colorScheme.onSecondary,
                              icon: Icon(Icons.delete),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                );
              },
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).colorScheme.onSecondary,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(10),
            //       topRight: Radius.circular(10),
            //     ),
            //     border: Border.all(width: 1),
            //   ),
            //   width: double.infinity,
            //   height: 45,
            //   child: SizedBox(

            //   )
            // ),
          ],
        ),
      ),
    );
  }

  void clearInputControllers() {}
}

class CustomCell extends StatelessWidget {
  const CustomCell({
    super.key,
    required this.textStyle,
    required this.text,
    required this.title,
    this.width = 200,
  });

  final TextStyle textStyle;
  final String text;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        onPressed: () => textFieldDialog(
          context,
          textStyle,
          () {},
          title: title,
          content: text.capitalizeEach(),
        ),
        child: Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          text.capitalizeEach(),
          style: textStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
