import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.initialPage,
      onGenerateRoute: Routes.generatedRoute,
    );
  }
}

class RouteName {
  static const String initialPage = '/';
  static const String secondPage = '/secondPage';
  static const String thirdPage = '/thirdPage';
}

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.initialPage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteName.secondPage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SecondPage(),
        );
      case RouteName.thirdPage:
        final DummyModelData dummyModelData =
        settings.arguments as DummyModelData;

        return MaterialPageRoute(
          builder: (BuildContext context) => ThirdPage(
            dummyModelData: dummyModelData,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined'),
              ),
            );
          },
        );
    }
  }
}

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

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('SecondPage!'),
          ),
          TextButton(
            onPressed: () {
              const sendingArgument = DummyModelData(
                name: 'Abdul Awal',
                age: 28,
              );
              Navigator.of(context)
                  .pushNamed(RouteName.thirdPage, arguments: sendingArgument);
            },
            child: const Text('Go to the third Page'),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  final DummyModelData dummyModelData;
  const ThirdPage({
    super.key,
    required this.dummyModelData,
  });

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Third Page!'),
          ),
          Text(
              'Name: ${widget.dummyModelData.name} And Age: ${widget.dummyModelData.age}'),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteName.initialPage);
            },
            child: const Text('Go to the initial page '),
          ),
        ],
      ),
    );
  }
}

class DummyModelData {
  final int age;
  final String name;
  const DummyModelData({
    required this.name,
    required this.age,
  });
}
