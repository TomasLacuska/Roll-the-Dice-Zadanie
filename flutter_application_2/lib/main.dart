import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll The Dice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final Random _random = Random();
  int _dice = 1;

  void _rollDice() {
    setState(() {
      _dice = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Roll The Dice')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dice-$_dice.png', width: 200),
            const SizedBox(height: 32),
            Text('Padlo: $_dice',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _rollDice,
              child: const Text('Hodiť kockou'),
            ),
          ],
        ),
      ),
    );
  }
}
