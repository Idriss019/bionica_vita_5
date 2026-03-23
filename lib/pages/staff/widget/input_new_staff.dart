// import 'dart:ui';
import 'package:bionica_vita_5/functions/password_service.dart';
import 'package:bionica_vita_5/pages/password/cubit/password_cubit.dart';
import 'package:bionica_vita_5/pages/staff/cubit/staff_cubit.dart';
import 'package:bionica_vita_5/theme/dataClass/theme.dart';
// import 'package:dart_helper_method/string_helper.dart';
// import 'package:fastfood/data_class/staff_data.dart';
// import 'package:fastfood/presentation/staff/bloc/staff_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputNewStaffDialogWidget extends StatefulWidget {
  const InputNewStaffDialogWidget({super.key});

  @override
  State<InputNewStaffDialogWidget> createState() => _StateInputNewStaffDialog();
}

class _StateInputNewStaffDialog extends State<InputNewStaffDialogWidget> {
  late StaffCubit staffCubit;
  final inputPotionController = TextEditingController();
  final inputLoginController = TextEditingController();
  final inputPasswordController = TextEditingController();
  final retryPasswordController = TextEditingController();
  final inputPowerController = TextEditingController();
  final inputStorageController = TextEditingController();
  bool isObscured = true;

  // Map<int, bool> _selectionStates = {0: false, 1: false, 2: false};
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   // Now you can safely access context
  //   staffCubit = context.read<StaffCubit>();
  // }
  @override
  void initState() {
    super.initState();
    staffCubit = context.read<StaffCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    inputPotionController.dispose();
    inputLoginController.dispose();
    inputPasswordController.dispose();
    retryPasswordController.dispose();
    inputPowerController.dispose();
    inputStorageController.dispose();
  }

  void clearInputControllers() {
    inputPotionController.clear();
    inputLoginController.clear();
    inputPasswordController.clear();
    retryPasswordController.clear();
    inputPowerController.clear();
    inputStorageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, bool> selectStorage = {
      'Дом': false,
      'Махачкала': false,
      'Кизляр': false,
    };
    // const TextStyle textStyle = TextStyle(
    //   fontWeight: FontWeight.w500,
    //   fontSize: 25,
    // );
    Color invertColor = CustomTheme(context: context).colorBorder;
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          // color: invertColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: invertColor, width: 2),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () async {
              return showDialog(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return AlertDialog(
                        content: Text(
                          'Добавить пользователя',
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
                                      'Должность :',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox.fromSize(size: Size(10, 0)),
                                    Expanded(
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: inputPotionController,
                                        cursorColor: Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onSecondary,
                                              width: 1.5,
                                            ),
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
                                      'Логин :',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox.fromSize(size: Size(10, 0)),
                                    Expanded(
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: inputLoginController,
                                        cursorColor: Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,

                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onSecondary,
                                              width: 1.5,
                                            ),
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
                                      'Пароль :',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox.fromSize(size: Size(10, 0)),
                                    Expanded(
                                      child: TextField(
                                        obscureText: isObscured,
                                        controller: inputPasswordController,
                                        cursorColor: Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                        ], // С таким фильтром могут быть введены только числа
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onSecondary,
                                              width: 1.5,
                                            ),
                                          ),

                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              isObscured
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isObscured = !isObscured;
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
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox.fromSize(size: Size(10, 0)),
                                    Expanded(
                                      child: TextField(
                                        obscureText: isObscured,
                                        controller: retryPasswordController,
                                        cursorColor: Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                        ], // С таким фильтром могут быть введены только числа
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onSecondary,
                                              width: 1.5,
                                            ),
                                          ),

                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              isObscured
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isObscured = !isObscured;
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
                                      'Код полномочий :',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox.fromSize(size: Size(10, 0)),
                                    Expanded(
                                      child: TextField(
                                        controller: inputPowerController,
                                        cursorColor: Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          TextInputFormatter.withFunction((
                                            oldValue,
                                            newValue,
                                          ) {
                                            final regExp = RegExp(r'^[01]*$');

                                            if (regExp.hasMatch(
                                              newValue.text,
                                            )) {
                                              return newValue; // принимаем ввод
                                            }

                                            return oldValue; // отклоняем и оставляем старую строку
                                          }),
                                        ],
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onSecondary,
                                              width: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // height: 100,
                                width: 300,
                                child: Row(
                                  children: [
                                    Text(
                                      'Склад :',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox.fromSize(size: Size(10, 0)),
                                    Expanded(
                                      child: Column(
                                        children: selectStorage.entries.map((
                                          storage,
                                        ) {
                                          return CheckboxListTile(
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            title: Text(storage.key),
                                            value: storage.value,
                                            onChanged: (value) {
                                              setState(() {
                                                selectStorage[storage.key] =
                                                    value!;
                                                List<String> storageList = [];
                                                for (var i
                                                    in selectStorage.entries) {
                                                  if (i.value) {
                                                    storageList.add(i.key);
                                                  }
                                                }

                                                inputStorageController.text =
                                                    storageList.join(' ');

                                                // print(
                                                //   inputStorageController.text,
                                                // );
                                              });
                                            },
                                          );
                                        }).toList(),
                                        //                                     [
                                        //                                       SizedBox(
                                        //                                         child: Row(
                                        //   children: [
                                        //     IconButton(
                                        //       onPressed: () {
                                        //         setState(() {
                                        //           _isSelected = !_isSelected; // Toggle the state (True/False)
                                        //         });
                                        //       },
                                        //       icon: Icon(
                                        //         _isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                                        //         color: Theme.of(context).colorScheme.onSecondary,
                                        //       ),
                                        //     ),
                                        //     Expanded(
                                        //       child: Center(
                                        //         child: Text(
                                        //           widget.label, // Display the label passed from the parent widget
                                        //           style: TextStyle(fontWeight: FontWeight.bold),
                                        //         ),
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                        //                                       )

                                        //                                       // SelectableRow(label: 'Дом', index: 0),
                                        //                                       // SelectableRow(
                                        //                                       //   label: 'Кизляр',
                                        //                                       //   index: 1,
                                        //                                       // ),
                                        //                                       // SelectableRow(
                                        //                                       //   label: 'Махачкала',
                                        //                                       //   index: 2,
                                        //                                       // ),
                                        //                                     ],
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: Column(
                                    //     children: [
                                    //       Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             child: IconButton(
                                    //               onPressed: () {},
                                    //               icon: Icon(
                                    //                 Icons.info_outline,
                                    //                 color: Theme.of(
                                    //                   context,
                                    //                 ).colorScheme.onSecondary,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //           Expanded(
                                    //             child: Center(
                                    //               child: Text('Дом'),
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //       Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             child: IconButton(
                                    //               onPressed: () {},
                                    //               icon: Icon(
                                    //                 Icons.info_outline,
                                    //                 color: Theme.of(
                                    //                   context,
                                    //                 ).colorScheme.onSecondary,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //           Expanded(
                                    //             child: Center(
                                    //               child: Text('Кизляр'),
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //       Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             child: IconButton(
                                    //               onPressed: () {},
                                    //               icon: Icon(
                                    //                 Icons.info_outline,
                                    //                 color: Theme.of(
                                    //                   context,
                                    //                 ).colorScheme.onSecondary,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //           Expanded(
                                    //             child: Center(
                                    //               child: Text('Махачкала'),
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //       // SizedBox(height: 10),
                                    //       // child: DropdownMenu<String>(
                                    //       //   controller: inputStorageController,
                                    //       //   initialSelection: 'Вариант 1',
                                    //       //   // label: const Text('Склад'),
                                    //       //   dropdownMenuEntries:
                                    //       //       <DropdownMenuEntry<String>>[
                                    //       //         DropdownMenuEntry(
                                    //       //           value: '1',
                                    //       //           label: 'Домашний',
                                    //       //         ),
                                    //       //         DropdownMenuEntry(
                                    //       //           value: '2',
                                    //       //           label: 'Кизлярский',
                                    //       //         ),
                                    //       //         DropdownMenuEntry(
                                    //       //           value: '3',
                                    //       //           label: 'Махачкалинский',
                                    //       //         ),
                                    //       //       ],
                                    //       //   onSelected: (String? value) {
                                    //       //     print('Выбрано: $value');
                                    //       //   },
                                    //       // ),
                                    //       // ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   // width: 300,
                                    //   // margin: EdgeInsets.only(
                                    //   //   left: leftRightMargin,
                                    //   //   right: leftRightMargin,
                                    //   //   top: 10,
                                    //   //   bottom: 10,
                                    //   // ),
                                    //   child: DropdownMenu<String>(
                                    //     initialSelection: 'Вариант 1',
                                    //     label: const Text('Склад'),
                                    //     dropdownMenuEntries:
                                    //         <DropdownMenuEntry<String>>[
                                    //           DropdownMenuEntry(
                                    //             value: '1',
                                    //             label: 'Домашний',
                                    //           ),
                                    //           DropdownMenuEntry(
                                    //             value: '2',
                                    //             label: 'Кизлярский',
                                    //           ),
                                    //           DropdownMenuEntry(
                                    //             value: '3',
                                    //             label: 'Махачкалинский',
                                    //           ),
                                    //         ],
                                    //     onSelected: (String? value) {
                                    //       print('Выбрано: $value');
                                    //     },
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        color: invertColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  /*  кнопка принятия */
                                  TextButton(
                                    onPressed: () async {
                                      String message = staffCubit.changeInput(
                                        password: inputPasswordController.text,
                                        login: inputLoginController.text,
                                        position: inputPotionController.text,
                                        powersString: inputPowerController.text,
                                        storage: inputStorageController.text,
                                        retryPassword:
                                            retryPasswordController.text,
                                      );
                                      if (message.isNotEmpty) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              message,
                                              style: TextStyle(fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                            duration: Duration(seconds: 2),
                                          ),
                                        );
                                        return;
                                      } else {
                                        staffCubit.createUser(
                                          login: inputLoginController.text
                                              .toLowerCase(),
                                          password:
                                                inputPasswordController.text,
                                          position: inputPotionController.text
                                              .toLowerCase(),
                                          storage: inputStorageController.text,
                                          powersString:
                                              inputPowerController.text,
                                        );
                                        setState(() {
                                          clearInputControllers();
                                          staffCubit.loadStaffData();
                                          /* исправить */
                                          // PasswordCubit().loadPasswordData(context);
                                          Navigator.pop(context);
                                          
                                        });
                                      }
                                    },
                                    child: Text(
                                      'Добавить',
                                      style: TextStyle(
                                        color: invertColor,
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
                      // ],
                      //     ),
                      //   ],
                      // );
                    },
                  );
                },
              );
            },
            // borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add, color: invertColor, size: 28),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectableRow extends StatefulWidget {
  final String label;
  final int index;

  const SelectableRow({required this.label, required this.index, super.key});

  @override
  SelectableRowState createState() => SelectableRowState();
}

class SelectableRowState extends State<SelectableRow> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              _isSelected = !_isSelected; // Toggle the state (True/False)
            });
          },
          icon: Icon(
            _isSelected ? Icons.check_box : Icons.check_box_outline_blank,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              widget.label, // Display the label passed from the parent widget
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
