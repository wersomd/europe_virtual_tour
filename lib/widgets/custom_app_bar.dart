import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/provider/theme_provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLightTheme = !Provider.of<ThemeProvider>(context).isDarkMode;

    return FadeInUp(
      child: AppBar(
        backgroundColor: isLightTheme ? Colors.white : Colors.transparent,
        elevation: isLightTheme ? 1 : 0,
        centerTitle: true,
        title: Text(
          'Europe Virtual Tour',
          style: TextStyle(
            fontSize: 20,
            color: isLightTheme ? Colors.black : theme.textTheme.bodyLarge!.color,
            letterSpacing: 0.53,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: Icon(
            Icons.subject,
            color: isLightTheme ? Colors.black : theme.appBarTheme.iconTheme?.color,
            size: 34,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return Icon(
                  themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                  color: isLightTheme ? Colors.black : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
