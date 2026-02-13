import 'dart:io';

import 'package:bionica_vita_5/globalProviders/second_color_provider.dart';
import 'package:bionica_vita_5/pages/accounting/widget/page.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/page.dart';
import 'package:bionica_vita_5/pages/nav_bar.dart';
import 'package:bionica_vita_5/pages/password/cubit/password_cubit.dart';
import 'package:bionica_vita_5/pages/password/widget/page.dart';
import 'package:bionica_vita_5/pages/purchases/widget/page.dart';
import 'package:bionica_vita_5/pages/recalculation/widget/page.dart';
import 'package:bionica_vita_5/pages/reports/widget/page.dart';
import 'package:bionica_vita_5/pages/settings/widget/page.dart';
import 'package:bionica_vita_5/pages/staff/widget/page.dart';
import 'package:bionica_vita_5/pages/storage/widget/page.dart';
import 'package:bionica_vita_5/pages/tables/widget/page.dart';
import 'package:bionica_vita_5/theme/dataClass/theme.dart';
import 'package:bionica_vita_5/theme/provider/theme_change.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

void main() {
  runApp(MyApp());

  //  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Bionica Vita 5');
    setWindowMinSize(const Size(1024, 731));
    // setWindowMaxSize(const Size(1024, 748));
    setWindowFrame(const Rect.fromLTWH(100, 100, 1024, 748));
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Map<String, ThemeData> mapTheme = {
    'light': lightTheme,
    'dark': darkTheme,
  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => SecondColorNotifier()),

        BlocProvider(create: (context) => PasswordCubit()),
      ],
      child: Consumer(
        builder: (context, ThemeProvider themeChange, child) {
          return MaterialApp.router(
            title: 'Bionica Vita 5',
            theme: mapTheme[themeChange.theme],
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    // transitionDuration: const Duration(milliseconds: 3000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: PasswordPage(),
      ),

      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return NavBarPage(child: child);
          },
          routes: [
            GoRoute(
              path: 'home',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: HomePage(),
                  ),
            ),
            GoRoute(
              path: 'purchases',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: PurchasesPage(),
                  ),
            ),
            GoRoute(
              path: 'storage',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: StoragePage(),
                  ),
            ),
            GoRoute(
              path: 'accounting',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: AccountingPage(),
                  ),
            ),
            GoRoute(
              path: 'reports',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: ReportsPage(),
                  ),
            ),
            GoRoute(
              path: 'tables',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: TablesPage(),
                  ),
              routes: [
                GoRoute(
                  path: 'storage',
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: SizedBox(), // StoragePageWidget(),
                      ),
                ),
                GoRoute(
                  path: 'sales',
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: SizedBox(), // SalesTableWidget(),
                      ),
                ),
                GoRoute(
                  path: 'purchaseTable',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition<void>(
                      context: context,
                      state: state,
                      child: SizedBox(), // PurchasesTableWidget(),
                    );
                  },
                ),
              ],
            ),

            GoRoute(
              path: 'recalculation',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: RecalculationPage(),
                  ),
            ),
            GoRoute(
              path: 'staff',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: StaffPage(),
                  ),
            ),
            GoRoute(
              path: 'settings',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: SettingsPage(),
                  ),
            ),
          ],
        ),
      ],
    ),
  ],
);
