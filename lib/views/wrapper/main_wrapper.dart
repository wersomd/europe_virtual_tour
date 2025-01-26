import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:app/widgets/bottom_tabs.dart';
import 'package:app/widgets/drawer/custom_drawer.dart';

// ignore: must_be_immutable
class MainWrapper extends StatefulWidget {
  int selectedIndex = 0;

  MainWrapper({super.key, required this.selectedIndex});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _onItemTapped(widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: IndexedStack(
          index: widget.selectedIndex,
          children: [
            for (final tabItem in TabNavigationItem.items) tabItem.page,
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              title: Text(
                "Главная",
                style: TextStyle(
                  color: theme.textTheme.labelSmall!.color,
                ),
              ),
              selectedColor: Colors.indigo,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: Text(
                "Избранные",
                style: TextStyle(
                  color: theme.textTheme.labelSmall!.color,
                ),
              ),
              selectedColor: Colors.indigo,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.chat_bubble_outline_rounded),
              title: Text(
                "AI",
                style: TextStyle(
                  color: theme.textTheme.labelSmall!.color,
                ),
              ),
              selectedColor: Colors.indigo,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person_outline),
              title: Text(
                "Профиль",
                style: TextStyle(
                  color: theme.textTheme.labelSmall!.color,
                ),
              ),
              selectedColor: Colors.indigo,
            ),
          ],
        ),
        drawer: const CustomDrawer(),
      ),
    );
  }
}
