import 'package:bionica_vita_5/theme/provider/theme_change.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class NavBarPage extends StatefulWidget {
  final Widget child;
  const NavBarPage({super.key, required this.child});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  bool onPress = false;
  int selectIndex = 1;
  late ThemeProvider themeProvider;

  @override
  void initState() {
    super.initState();
    themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    Icon themeIcon = themeProvider.theme == 'light'
        ? const Icon(Icons.brightness_5_outlined)
        : const Icon(Icons.brightness_2_outlined);
    List<Item> rows = [
      Item(
        title: '',
        icon: const Icon(Icons.menu),
        onPress: () => setState(() {
          onPress = !onPress;
        }),
        iconIndex: 0,
      ),
      Item(
        title: 'Продажи',
        icon: const Icon(Icons.balance),
        onPress: () {
          selectIndex = 1;
          onPress = false;
          context.go('/home');
        },
        iconIndex: 1,
      ),
      Item(
        title: 'Закуп',
        icon: const Icon(Icons.add_shopping_cart),
        onPress: () {
          selectIndex = 2;
          onPress = false;
          context.go('/purchases');
        },
        iconIndex: 2,
      ),
      Item(
        title: 'Склад',
        icon: const Icon(Icons.store),
        onPress: () {
          onPress = false;
          context.go('/storage');
          selectIndex = 3;
        },
        iconIndex: 3,
      ),
      Item(
        title: 'Бухучет',
        icon: const Icon(Icons.auto_stories_outlined),
        onPress: () {
          onPress = false;
          context.go('/accounting');
          selectIndex = 4;
        },
        iconIndex: 4,
      ),
      Item(
        title: 'Отчеты',
        icon: const Icon(Icons.assessment_outlined),
        onPress: () {
          onPress = false;
          context.go('/reports');
          selectIndex = 5;
        },
        iconIndex: 5,
      ),
      Item(
        title: 'Таблицы',
        icon: const Icon(Icons.apps_sharp),
        onPress: () {
          onPress = false;
          context.go('/tables');
          selectIndex = 6;
        },
        iconIndex: 6,
      ),
      Item(
        title: 'Перерасчет',
        icon: const Icon(Icons.calculate_outlined),
        onPress: () {
          onPress = false;
          context.go('/recalculation');
          selectIndex = 7;
        },
        iconIndex: 7,
      ),
      Item(
        title: 'Персонал',
        icon: const Icon(Icons.person),
        onPress: () {
          onPress = false;
          context.go('/staff');
          selectIndex = 8;
        },
        iconIndex: 8,
      ),
      Item(
        title: 'Тема',
        icon: themeIcon,
        onPress: () => setState(() {
          if (themeProvider.theme == 'light') {
            themeProvider.updateTheme('dark');
          } else {
            themeProvider.updateTheme('light');
          }
        }),
        iconIndex: 9,
      ),
      Item(
        title: 'Настройки',
        icon: const Icon(Icons.settings),
        onPress: () {
          onPress = false;
          context.go('/settings');
          selectIndex = 10;
        },
        iconIndex: 10,
      ),
    ];
    List<Item> rows2 = rows.sublist(1);
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 50,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: rows.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: selectIndex == rows[index].iconIndex
                              ? Theme.of(context).colorScheme.outline
                              : null,
                          width: 50,
                          child: IconButton(
                            color: Theme.of(context).colorScheme.onPrimary,
                            iconSize: 30,
                            onPressed: () {
                              setState(() {
                                rows[index].onPress!();
                              });
                            },
                            icon: rows[index].icon,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: IconButton(
                    color: Theme.of(context).colorScheme.onPrimary,
                    iconSize: 30,
                    onPressed: () => context.go('/'),
                    icon: const Icon(Icons.lock_outline),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                SizedBox(
                  // decoration: BoxDecoration(
                  //   color: const Color.fromARGB(255, 96, 118, 165),
                  // ),
                  child: widget.child,
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeInOut,
                  top: 46,
                  left: onPress ? 0 : -180,
                  bottom: 0,
                  child: IgnorePointer(
                    ignoring: !onPress,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                      opacity: onPress ? 1 : 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.onTertiaryContainer,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        width: 180,
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: ListView.builder(
                                  itemCount: rows2.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      color:
                                          selectIndex == rows2[index].iconIndex
                                          ? Theme.of(
                                              context,
                                            ).colorScheme.outline
                                          : null,
                                      padding: const EdgeInsets.only(left: 10),
                                      height: 46,
                                      width: 200,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              rows2[index].onPress!();
                                            });
                                          },
                                          child: Text(
                                            rows2[index].title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onPrimary,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              height: 45.5,
                              width: 200,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () => context.go('/'),
                                  child: Text(
                                    'Выход',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onPrimary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final Icon icon;
  final VoidCallback? onPress;
  final int iconIndex;
  Item({
    required this.title,
    required this.icon,
    required this.onPress,
    required this.iconIndex,
  });
}
