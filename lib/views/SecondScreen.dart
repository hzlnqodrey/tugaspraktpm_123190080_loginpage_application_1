import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key}) {}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
              padding: const EdgeInsets.all(2), child: Text('Text $index')),
        );
      },
      itemCount: 100,
    );
  }
}
