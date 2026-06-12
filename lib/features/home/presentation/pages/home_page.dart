import 'package:flutter/material.dart';
import 'package:quizhill_flutter/core/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Quizhill"),
      body: const Text('test'),
    );
  }
}
