import 'package:clean_routing/route_names.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('SplashScreen!'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteName.secondPage);
            },
            child: const Text('Go to the second Page'),
          ),
        ],
      ),
    );
  }
}