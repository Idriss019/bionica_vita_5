import 'package:bionica_vita_5/pages/password/cubit/password_cubit.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class KeyboardPassword extends StatefulWidget {
  // final TextEditingController inputController;
  const KeyboardPassword({super.key});

  @override
  State<KeyboardPassword> createState() => _KeyboardPasswordState();
}

class _KeyboardPasswordState extends State<KeyboardPassword> {
  // TextEditingController get inputController => widget.inputController;
  // late TextEditingController inputController;
  // final passwordController = TextEditingController();

  late PasswordCubit passwordBloc;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();

    passwordBloc = context.read<PasswordCubit>();
    _isObscured = true;

    // loadPass();
    // Future.microtask(() async {
    //   await passwordBloc.loadPasswordData();
    //   // await passwordBloc.staffSQL.insertRoot();
    // });
  }

  Future<void> loadPass() async {
    await passwordBloc.loadPasswordData(context);
  }
  // @override
  // void dispose() {
  //   super.dispose();
  //   passwordController.dispose();
  // }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   final passwordBlocWatch = context.watch<PasswordCubit>();
  //   print('WWW');

  //   // final purchasesBloc = context.watch<PurchasesBloc>();
  //   // // Обновляем контроллер при изменении состояния
  //   final String password = passwordBlocWatch.state.inputPassword;
  //   print('password = $password');
  //   print('passwordController = ${passwordController.text}');
  //   if (passwordController.text != password) {
  //     print('QQQ');
  //     passwordController.value = TextEditingValue(
  //       text: password,
  //       selection: TextSelection.collapsed(offset: password.length),
  //     );
  //     // if (passwordBlocWatch.changePasswordToStart(passwordController.text)) {
  //     //   context.go('/home');
  //     //   passwordController.text = '';
  //     // }
  //   }
  // }
//   @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   print('initState!!');
// }

  @override
  Widget build(BuildContext context) {
    loadPass();
    // final bloc = context.read<PasswordCubit>();

    return Flexible(
      flex: 1,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.deepPurple),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // height: 100,
                  child: Text(
                    'Введите пароль',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      // color: Theme.of(context).colorScheme.onSecondary,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                Container(
                  // padding: EdgeInsets.only(top: 20, bottom: 20),
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                    bottom: 20,
                  ),
                  // color: Colors.white,
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 40),
                      Center(
                        child: BlocConsumer<PasswordCubit, PasswordState>(
                          listenWhen: (previous, current) =>
                              previous.inputPassword != current.inputPassword,
                          listener: (context, state) async {
                            // if (passwordBloc.changePasswordToStart()) {
                            //   // задержка 2 секунды
                            //   await Future.delayed(const Duration(seconds: 2));
                            //   if (!context.mounted) return;
                            //   context.go('/home');
                            // }
                          },
                          buildWhen: (previous, current) =>
                              previous.inputPassword != current.inputPassword,
                          builder: (context, state) {
                            return Text(
                              _isObscured
                                  ? '•' * state.inputPassword.length
                                  : state.inputPassword,
                              style: const TextStyle(fontSize: 40),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            );
                          },
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(
                          _isObscured ? Icons.visibility : Icons.visibility_off,
                        ),
                        splashRadius: 20,
                        // padding: EdgeInsets.all(8),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      KeyboardButton(passwordBloc: passwordBloc, value: '1'),
                      KeyboardButton(passwordBloc: passwordBloc, value: '2'),
                      KeyboardButton(passwordBloc: passwordBloc, value: '3'),
                    ],
                  ),
                  Row(
                    children: [
                      KeyboardButton(passwordBloc: passwordBloc, value: '4'),
                      KeyboardButton(passwordBloc: passwordBloc, value: '5'),
                      KeyboardButton(passwordBloc: passwordBloc, value: '6'),
                    ],
                  ),
                  Row(
                    children: [
                      KeyboardButton(passwordBloc: passwordBloc, value: '7'),
                      KeyboardButton(passwordBloc: passwordBloc, value: '8'),
                      KeyboardButton(passwordBloc: passwordBloc, value: '9'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: IconButton(
                            onPressed: () {
                              passwordBloc.updateState(
                                passwordBloc.state.copyWith(inputPassword: ''),
                              );
                              // inputController.text = '';
                              // setState(() {
                              //   passwordController.text = '';
                              // });
                            },
                            icon: const Icon(
                              size: 40,
                              Icons.refresh,
                              // color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      KeyboardButton(passwordBloc: passwordBloc, value: '0'),
                      Expanded(
                        child: SizedBox(
                          child: IconButton(
                            onPressed: () {
                              passwordBloc.updateState(
                                passwordBloc.state.copyWith(
                                  inputPassword:
                                      passwordBloc
                                          .state
                                          .inputPassword
                                          .isNotEmpty
                                      ? passwordBloc.state.inputPassword
                                            .substring(
                                              0,
                                              passwordBloc
                                                      .state
                                                      .inputPassword
                                                      .length -
                                                  1,
                                            )
                                      : '',
                                ),
                              );
                              // if (inputController.text.isNotEmpty) {
                              //   setState(() {
                              //     inputController.text = inputController.text
                              //         .substring(
                              //           0,
                              //           inputController.text.length - 1,
                              //         );
                              //   });
                              // }
                              // if (passwordController.text.isNotEmpty) {
                              //   setState(() {
                              //     passwordController.text = passwordController
                              //         .text
                              //         .substring(
                              //           0,
                              //           passwordController.text.length - 1,
                              //         );
                              //   });
                              // }
                            },
                            icon: const Icon(
                              size: 40,
                              Icons.backspace,
                              // color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
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

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({
    super.key,
    required this.value,
    required this.passwordBloc,
  });
  final String value;
  final PasswordCubit passwordBloc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: TextButton(
          onPressed: () {
            passwordBloc.plusValueState(value);
            if (passwordBloc.changePasswordToStart()) {
              Future.delayed(Duration(seconds: 1), () {
                if (context.mounted) return context.go('/home');
                // context.go('/home');
                // context.go('/notPowers');
              });
            }
          },
          child: Text(value, style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}

/* 
Зачем использовать mounted?

Когда вы работаете с асинхронными операциями, такими как Future.delayed, существует риск, что виджет может быть удалён из дерева виджетов до того, как асинхронная операция завершится. В этом случае попытка обновить состояние или выполнить навигацию вызовет ошибку, потому что BuildContext больше не будет доступен. Проверка mounted помогает избежать таких ошибок, гарантируя, что вы выполняете действия только при активном виджете.

Так что, в данном примере вам просто нужно использовать mounted перед вызовом context.go(), чтобы убедиться, что навигация не произойдёт, если виджет уже был удалён.

 */