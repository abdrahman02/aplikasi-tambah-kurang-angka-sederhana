import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int angka = 0;

  void tambahAngka() {
    setState(() {
      angka++;
    });
  }

  void kurangAngka() {
    setState(() {
      angka--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Angka sekarang adalah ...'),
            Text(
              '$angka',
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: tambahAngka,
            tooltip: 'Tambah Angka',
            child: Icon(Icons.exposure_plus_1),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: kurangAngka,
            tooltip: 'Kurang Angka',
            child: Icon(Icons.exposure_minus_1),
          )
        ],
      ),
    );
  }
}
