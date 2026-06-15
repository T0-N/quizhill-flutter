import 'package:flutter/material.dart';

class QuizHomeList extends StatelessWidget {
  final List<dynamic> quizes;

  const QuizHomeList({super.key, required this.quizes});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(title: Text('Najwyższe drzewa Polski'));
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: quizes.length,
    );
  }
}
