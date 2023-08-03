import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz, {super.key});
final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color:const Color.fromARGB(154, 0, 0, 0),
        ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter With Fun',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz;
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 197, 122, 203),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        )
      ],
    ));
  }
}
