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
      Navigator.pushReplacementNamed(
        context,
        '/welcome',
      );
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      debugPrint("Ошибка при входе: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            FadeInUp(
              delay: const Duration(milliseconds: 600),
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(
                            'assets/images/venice.webp',
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          _user != null
                              ? '${_user.displayName}'
                              : 'Вы не вошли',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: theme.textTheme.bodyLarge!.color,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          _user != null ? '${_user.email}' : '',
                          style: TextStyle(
                            color: theme.textTheme.labelMedium!.color,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Divider(
                          height: 2,
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 700),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _user != null ? _signOut() : _signIn();
                    },
                    style: theme.elevatedButtonTheme.style,
                    child: Text(
                      _user != null ? 'Выйти' : 'Войти',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: theme.textTheme.labelLarge!.color,
                        letterSpacing: 2.8,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
