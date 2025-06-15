import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  int _currentCityIndex = 0;
  
  final List<String> _cities = [
    'Paris',
    'London',
    'Rome',
    'Berlin',
    'Madrid',
    'Amsterdam',
    'Vienna',
    'Prague',
    'Budapest',
    'Athens'
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _startCityAnimation();
    _navigateToMain();
  }

  void _navigateToMain() {
    Future.delayed(const Duration(seconds: 6), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/main');
      }
    });
  }

  void _startCityAnimation() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _currentCityIndex = (_currentCityIndex + 1) % _cities.length;
        });
        _controller.forward(from: 0.0);
        _startCityAnimation();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Globe Animation with FutureBuilder
            SizedBox(
              width: 200,
              height: 200,
              child: FutureBuilder(
                future: AssetLottie('assets/animations/globe.json').load(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Icon(
                      Icons.public,
                      size: 100,
                      color: Colors.white,
                    );
                  }
                  
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator(
                      color: Colors.white,
                    );
                  }

                  return Lottie(
                    composition: snapshot.data,
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            // City Name with Fade Animation
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                _cities[_currentCityIndex],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 