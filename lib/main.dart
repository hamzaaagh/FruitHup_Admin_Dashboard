import 'package:flutter/material.dart';

void main() {
  runApp(FruitHupDashboard());
}
class FruitHupDashboard extends StatelessWidget {
  const FruitHupDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FruitHup Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FruitHup Dashboard'),
        ),
        body: Center(
          child: Text('Welcome to FruitHup Dashboard!'),
        ),
      ),
    );
  }
}