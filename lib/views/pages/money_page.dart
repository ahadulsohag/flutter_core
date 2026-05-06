import 'package:flutter/material.dart';
import 'package:flutter_core/data/constants.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({super.key});

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('data', style: KTextStyle.descriptionTealText)),
    );
  }
}
