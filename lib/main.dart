import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart'; // import the Counter model

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

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counter.count}',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counter.increment,
                  child: Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counter.decrement,
                  child: Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
