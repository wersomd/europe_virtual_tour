import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app/views/home/welcome.dart';
import 'package:app/views/wrapper/main_wrapper.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        
        if (snapshot.hasError) {
          debugPrint('Auth state error: ${snapshot.error}');
          return const Scaffold(
            body: Center(
              child: Text('Что-то пошло не так!'),
            ),
          );
        }

        final user = snapshot.data;
        if (user != null) {
          return MainWrapper(
            selectedIndex: 0,
          );
        }
        
        return const WelcomePage();
      },
    );
  }
}
