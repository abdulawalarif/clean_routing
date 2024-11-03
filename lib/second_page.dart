import 'package:clean_routing/route_names.dart';
import 'package:clean_routing/third_page.dart';
import 'package:flutter/material.dart';

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
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
