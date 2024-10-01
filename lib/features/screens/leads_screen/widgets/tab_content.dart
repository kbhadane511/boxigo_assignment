import 'package:flutter/material.dart';

class TabContent extends StatelessWidget {
  final String content;

  const TabContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            content,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}