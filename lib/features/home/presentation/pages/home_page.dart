import 'package:flutter/material.dart';
import 'package:quizhill_flutter/core/widgets/header.dart';
import 'package:quizhill_flutter/features/home/presentation/widgets/quiz_home_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Quizhill"),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: "Najnowsze"),
                Tab(text: "Popularne"),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  QuizHomeList(quizes: [1, 2, 3]),
                  QuizHomeList(quizes: [1, 2, 3]),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Losowy Quiz'),
        icon: const Icon(Icons.shuffle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
