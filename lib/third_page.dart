import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: Center(
        child: Text('ThirdPage !'),
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
