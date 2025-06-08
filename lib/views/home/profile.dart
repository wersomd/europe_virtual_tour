import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/drawer/custom_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _user = FirebaseAuth.instance.currentUser;

  void _signIn() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  Future<void> _signOut() async {
    try {
      Navigator.pushReplacementNamed(context, '/welcome');
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      debugPrint("Ошибка при входе: $e");
    }
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Theme.of(context).primaryColor),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodySmall?.color,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Avatar
                FadeInDown(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: theme.primaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: theme.primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Icon(
                          Icons.person_outline,
                          size: 60,
                          color: theme.primaryColor,
                        ),
                      ),
                      if (_user != null)
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: theme.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // User Info
                FadeInUp(
                  delay: const Duration(milliseconds: 200),
                  child: Text(
                    _user != null ? '${_user.displayName}' : 'Гость',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (_user != null) ...[
                  const SizedBox(height: 8),
                  FadeInUp(
                    delay: const Duration(milliseconds: 400),
                    child: Text(
                      '${_user.email}',
                      style: TextStyle(
                        color: theme.textTheme.bodySmall?.color,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 32),

                // Stats
                if (_user != null)
                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildStatCard('Туры', '12', Icons.map_outlined),
                        const SizedBox(width: 16),
                        _buildStatCard('Избранное', '8', Icons.favorite_border),
                      ],
                    ),
                  ),

                const SizedBox(height: 32),

                // Settings Section
                if (_user != null)
                  FadeInUp(
                    delay: const Duration(milliseconds: 800),
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: theme.cardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          _buildSettingsTile(
                            Icons.notifications_none,
                            'Уведомления',
                            onTap: () {},
                          ),
                          const Divider(height: 20),
                          _buildSettingsTile(
                            Icons.security,
                            'Конфиденциальность',
                            onTap: () {},
                          ),
                          const Divider(height: 20),
                          _buildSettingsTile(
                            Icons.help_outline,
                            'Помощь',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),

                const SizedBox(height: 32),

                // Sign In/Out Button
                FadeInUp(
                  delay: const Duration(milliseconds: 1000),
                  child: ElevatedButton(
                    onPressed: () {
                      _user != null ? _signOut() : _signIn();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _user != null ? Colors.red : theme.primaryColor,
                      minimumSize: Size(size.width, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      _user != null ? 'Выйти' : 'Войти',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsTile(IconData icon, String title, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Theme.of(context).primaryColor),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: Theme.of(context).iconTheme.color?.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }
}
