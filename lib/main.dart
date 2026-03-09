import 'dart:io';

import 'package:bionica_vita_5/globalProviders/second_color_provider.dart';
import 'package:bionica_vita_5/pages/costs/widget/costs_page.dart';
import 'package:bionica_vita_5/pages/debts/widget/debts_page.dart';
import 'package:bionica_vita_5/pages/home_sales/widget/page.dart';
import 'package:bionica_vita_5/pages/nav_bar.dart';
import 'package:bionica_vita_5/pages/password/cubit/password_cubit.dart';
import 'package:bionica_vita_5/pages/password/widget/page.dart';
import 'package:bionica_vita_5/pages/purchases/widget/bringingParcel/widget/page.dart';
import 'package:bionica_vita_5/pages/purchases/widget/cartCheckout/widget/page.dart';
import 'package:bionica_vita_5/pages/purchases/widget/collectingBaskets/widget/page.dart';
import 'package:bionica_vita_5/pages/purchases/widget/deliveryCosts/widget/page.dart';
import 'package:bionica_vita_5/pages/purchases/widget/page.dart';
import 'package:bionica_vita_5/pages/recalculation/widget/page.dart';
import 'package:bionica_vita_5/pages/reports/widget/page.dart';
import 'package:bionica_vita_5/pages/sales_baskets/widget/sales_baskets_page.dart';
import 'package:bionica_vita_5/pages/settings/widget/page.dart';
import 'package:bionica_vita_5/pages/staff/widget/page.dart';
import 'package:bionica_vita_5/pages/storage/widget/page.dart';
import 'package:bionica_vita_5/pages/tables/widget/page.dart';
import 'package:bionica_vita_5/pages/transfer/widget/transfer_page.dart';
import 'package:bionica_vita_5/theme/dataClass/theme.dart';
import 'package:bionica_vita_5/theme/provider/theme_change.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';
import 'package:bionica_vita_5/functions/password_service.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Bionica Vita 5');
    setWindowMinSize(const Size(1024, 731));
    // setWindowMaxSize(const Size(1024, 748));
    setWindowFrame(const Rect.fromLTWH(100, 100, 1024, 748));
  }

  String root = PasswordService.hashPassword('1233');
  // $2a$12$rGURJI/G47gzTs/4ZpioE.50xFB5HC921zGv65ttju07M6Wd99FgG // 1233
  String hash = root;
  bool test = PasswordService.verifyPassword('1233', hash);
  print('test: $test');
  print('hash: $hash');
  // print(test);
  // String powers = '';
  // for (int i = 0; i < 40; i++) {
  //   powers += '1';
  // }
  // print(powers);

  // requestAuth('1233');
  // requestAuth('1233');
}

// Future<void> request(String password) async {
//   final response = await http.get(Uri.parse('http://127.0.0.1:8080/users'));

//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     // print('data');
//     print(response.headers['content-type']);
//     print(response.body);
//     Map userAuth;
//     data.forEach((user) {
//       if (PasswordService.verifyPassword(password, user['password'])) {
//         userAuth = user;
//         print('userAuth');
//         print(userAuth);
//       }
//     });
//   } else {
//     print('Ошибка: ${response.statusCode}');
//   }
// }

// Future<void> requestAuth(String hash) async {
//   final response = await http.post(
//     Uri.parse('http://127.0.0.1:8080/auth'),
//     headers: {'Content-Type': 'application/json'},
//     body: jsonEncode({'passwordHash': hash}),
//   );

//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     print(data);
//   } else {
//     print('Ошибка авторизации');
//   }
// }

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
              routes: [
                GoRoute(
                  path: 'cart_checkout',
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: CartCheckoutPage(),
                      ),
                ),
                GoRoute(
                  path: 'collecting_baskets',
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: CollectingBasketsPage(),
                      ),
                ),
                GoRoute(
                  path: 'delivery_costs',
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: DeliveryCostsPage(),
                      ),
                ),
                GoRoute(
                  path: 'bringing_parcel',
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: BringingParcelPage(),
                      ),
                ),
              ],
            ),
            GoRoute(
              path: 'sales_baskets',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: SalesBasketsPage(),
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
              path: 'transfer',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: TransferPage(),
                  ),
            ),
            GoRoute(
              path: 'costs',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: CostsPage(),
                  ),
            ),
            GoRoute(
              path: 'debts',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: DebtsPage(),
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
