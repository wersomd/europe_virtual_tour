import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/firebase_options.dart';
import 'package:app/providers/theme_provider.dart';
import 'package:app/theme/app_theme.dart';
import 'package:app/views/auth/sign_in.dart';
import 'package:app/views/auth/sign_up.dart';
import 'package:app/views/home/favorites.dart';
import 'package:app/views/home/profile.dart';
import 'package:app/views/home/welcome.dart';
import 'package:app/views/our_ai/our_ai.dart';
import 'package:app/views/wrapper/main_wrapper.dart';
import 'package:app/views/wrapper/splash_screen.dart';
import 'package:app/services/firebase_stream.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    debugPrint('Firebase initialization error: $e');
  }
  
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: "Тур по Европе",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => MainWrapper(selectedIndex: 0),
        '/profile': (context) => const ProfilePage(),
        '/login': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/welcome': (context) => const WelcomePage(),
        '/favorite': (context) => const FavoritesPage(),
        '/our_ai': (context) => const OurAi(),
        '/main': (context) => const FirebaseStream(),
      },
      initialRoute: '/',
    );
  }
}
