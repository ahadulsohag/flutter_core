import 'package:flutter/material.dart';
import 'package:flutter_core/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lotties/growth_animation.json',
                  height: 200.0,
                ),

                SizedBox(height: 30.0),
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
                SizedBox(height: 40.0),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Register');
                        },
                      ),
                    );
                  },

                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 43.0),
                  ),
                  child: Text('Get Started'),
                ),
                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Login');
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 43.0),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
