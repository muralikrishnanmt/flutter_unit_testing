import 'package:flutter/material.dart';
import 'package:test_project/api_page.dart';
import 'package:test_project/counter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const CounterPage(title: 'Counter Page'),
                  ),
                );
              },
              child: const Text(
                'Counter',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ApiPage(),
                  ),
                );
              },
              child: const Text(
                'Http Call',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
