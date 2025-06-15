import 'package:flutter/material.dart';
import 'package:app/views/wrapper/main_wrapper.dart';
import 'package:app/widgets/drawer/bottom_user_info.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:animate_do/animate_do.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: AnimatedContainer(
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 500),
        width: _isCollapsed ? 300 : 70,
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // App Icon
              FadeInDown(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.primaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.travel_explore,
                    size: 40,
                    color: theme.primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Menu Items
              Expanded(
                child: ListView(
                  children: [
                    _buildMenuItem(
                      context,
                      icon: Icons.home_outlined,
                      title: 'Главная',
                      index: 0,
                      delay: 200,
                    ),
                    _buildMenuItem(
                      context,
                      icon: Icons.favorite_border,
                      title: 'Избранное',
                      index: 1,
                      delay: 400,
                    ),
                    _buildMenuItem(
                      context,
                      icon: Icons.chat_bubble_outline,
                      title: 'AI Помощник',
                      index: 2,
                      delay: 600,
                    ),
                    _buildMenuItem(
                      context,
                      icon: Icons.person_outline,
                      title: 'Профиль',
                      index: 3,
                      delay: 800,
                    ),
                    const Divider(height: 40),
                    _buildMenuItem(
                      context,
                      icon: Icons.settings_outlined,
                      title: 'Настройки',
                      onTap: () async {
                        await openAppSettings();
                      },
                      delay: 1000,
                    ),
                  ],
                ),
              ),

              // Bottom User Info
              if (_isCollapsed) ...[
                const Divider(),
                const SizedBox(height: 12),
                BottomUserInfo(isCollapsed: _isCollapsed),
                const SizedBox(height: 12),
              ],

              // Collapse Button
              IconButton(
                onPressed: () {
                  setState(() {
                    _isCollapsed = !_isCollapsed;
                  });
                },
                icon: FadeInLeft(
                  child: Icon(
                    _isCollapsed
                        ? Icons.arrow_back_ios
                        : Icons.arrow_forward_ios,
                    size: 16,
                    color: theme.iconTheme.color?.withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    int? index,
    VoidCallback? onTap,
    required int delay,
  }) {
    final theme = Theme.of(context);
    final isCollapsed = _isCollapsed;

    return FadeInLeft(
      delay: Duration(milliseconds: delay),
      child: ListTile(
        onTap: onTap ??
            () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MainWrapper(selectedIndex: index!),
                ),
              );
            },
        minLeadingWidth: 0,
        leading: Icon(
          icon,
          color: theme.iconTheme.color?.withOpacity(0.7),
        ),
        title: isCollapsed
            ? Text(
                title,
                style: TextStyle(
                  color: theme.textTheme.bodyLarge?.color?.withOpacity(0.7),
                ),
              )
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
