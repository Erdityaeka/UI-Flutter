import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expandedwidget(),
                Flexiblewidget(),
              ],
            ),
            Row(
              children: [
                Expandedwidget(),
                Expandedwidget(),
              ],
            ),
            Row(
              children: [
                Flexiblewidget(),
                Flexiblewidget(),
              ],
            ),
            Row(
              children: [
                Expandedwidget(),
                Flexiblewidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Expandedwidget extends StatelessWidget {
  const Expandedwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Expended',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ));
  }
}

class Flexiblewidget extends StatelessWidget {
  const Flexiblewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Flexible',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ));
  }
}
