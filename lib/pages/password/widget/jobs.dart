import 'package:bionica_vita_5/pages/password/cubit/password_cubit.dart';
// import 'package:fastfood/presentation/password/cubit/password_cubit.dart';
// import 'package:fastfood/presentation/password/widget/keyboard.dart';
// import 'package:fastfood/navBar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
import 'package:string_capitalize/string_capitalize.dart';
// import 'package:flutter_numeric_keyboard/flutter_numeric_keyboard.dart';

class JobsData extends StatefulWidget {
  const JobsData({super.key});

  @override
  State<JobsData> createState() => _JobsDataState();
}

class _JobsDataState extends State<JobsData> {
  late PasswordCubit passwordBloc;

  // final passwordController = TextEditingController();
  // var _isObscured = true;

  @override
  void initState() {
    super.initState();
    passwordBloc = context.read<PasswordCubit>();
    // context.read<ThemeCubit>().loadTheme();
    // _isObscured = true;
  }

  @override
  void dispose() {
    super.dispose();
    // passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PasswordCubit>();

    return StreamBuilder<PasswordState>(
      initialData: bloc.state,
      stream: bloc.stream,
      builder: (context, snapshot) {
        final visibilityError = snapshot.requireData.errorPassword != ''
            ? true
            : false;
        return Flexible(
          flex: 2,
          child: SizedBox(
            // color: Theme.of(context).colorScheme.pri,
            child: Center(
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.all(Radius.circular(20)),
                  //   child: Image.asset(
                  //     "assets/img/start.jpg",
                  //     fit: BoxFit.fill,
                  //     width: 180,
                  //     height: 150,
                  //   ),
                  // ),
                  SizedBox(height: 15),
                  Visibility(
                    visible: visibilityError,
                    child: Text(
                      snapshot.requireData.errorPassword,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: Theme.of(context).colorScheme.onSecondary,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'Добро пожаловать!',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Text(
                          'Должность:',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            // color: Theme.of(context).colorScheme.onSecondary,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      BlocBuilder<PasswordCubit, PasswordState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 100,
                            child: Text(
                              state.position.capitalize(),
                              style: TextStyle(
                                fontSize: 35,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                // color: Theme.of(context).colorScheme.onSecondary,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Text(
                          'Логин:',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            // color: Theme.of(context).colorScheme.onSecondary,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      BlocBuilder<PasswordCubit, PasswordState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 100,
                            child: Text(
                              state.login.capitalize(),
                              style: TextStyle(
                                fontSize: 35,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                // color: Theme.of(context).colorScheme.onSecondary,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Text(
                          'Склад:',
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w500,
                            // color: Theme.of(context).colorScheme.onSecondary,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      BlocBuilder<PasswordCubit, PasswordState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 100,
                            child: Text(
                              state.storage.capitalize(),
                              style: TextStyle(
                                fontSize: 35,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                // color: Theme.of(context).colorScheme.onSecondary,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
