import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wersomd_app/firebase_options.dart';
import 'package:wersomd_app/models/favorites_model.dart';
import 'package:wersomd_app/provider/theme_provider.dart';
import 'package:wersomd_app/views/auth/sign_in.dart';
import 'package:wersomd_app/views/auth/sign_up.dart';
import 'package:wersomd_app/views/home/favorites.dart';
import 'package:wersomd_app/views/home/profile.dart';
import 'package:wersomd_app/views/home/welcome.dart';
import 'package:wersomd_app/views/our_ai/our_ai.dart';
import 'package:wersomd_app/views/wrapper/main_wrapper.dart';
import 'package:wersomd_app/services/firebase_stream.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          return MaterialApp(
            title: "Тур по Европе",
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ThemeProvider>(context).themeData,
            routes: {
              '/': (context) => const FirebaseStream(),
              '/home': (context) => MainWrapper(
                    selectedIndex: 0,
                  ),
              '/profile': (context) => const ProfilePage(),
              '/login': (context) => const SignInPage(),
              '/signup': (context) => const SignUpPage(),
              '/welcome': (context) => const WelcomePage(),
              '/favorite': (context) => const FavoritesPage(),
              '/notifications': (context) => const OurAiPage(),
            },
            initialRoute: '/',
          );
        },
      );
}
