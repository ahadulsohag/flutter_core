import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Flutter Demo',
          
          style: TextStyle(color: Colors.black, ),
        ),
      ),

      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              'data',
              style: TextStyle(color: const Color.fromARGB(255, 243, 243, 14)),
            ),
          ),
        ),
      ),
    );
  }
}
