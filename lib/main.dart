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
        centerTitle: true,
        title: Text('Flutter Demo', style: TextStyle(color: Colors.black)),
      ),

      body: Center(
        child: Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100.0,
                width: 100.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    'data',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 100.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color.fromARGB(255, 41, 193, 21),
                ),
                child: Center(
                  child: Text(
                    'data',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
