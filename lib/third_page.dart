import 'package:clean_routing/route_names.dart';
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              '3',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Center(
            child: Text('Third Page!'),
          ),
          Text(
              'Name: ${widget.dummyModelData.name} And Age: ${widget.dummyModelData.age}'),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(RouteName.splashScreen,(route) => false,);
            },
            child: const Text('Start again'),
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
