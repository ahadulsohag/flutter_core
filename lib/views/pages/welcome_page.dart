import 'package:flutter/material.dart';
import 'package:flutter_core/views/pages/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/growth_animation.json'),
            FittedBox(
              child: Text(
                'Flutter Mappp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0,
                  letterSpacing: 50.0,
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
