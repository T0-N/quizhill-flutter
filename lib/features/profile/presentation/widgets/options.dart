import 'package:flutter/material.dart';
import 'package:quizhill_flutter/features/profile/presentation/widgets/theme_switch.dart';

class Option extends StatelessWidget {
  final Widget child;
  final String title;

  const Option({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), child],
      ),
    );
  }
}

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Option(title: 'Tryb ciemny', child: ThemeSwitch())],
    );
  }
}
