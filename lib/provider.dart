import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App with Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(),
    );
  }
}
