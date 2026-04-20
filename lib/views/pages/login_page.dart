import 'package:flutter/material.dart';
import 'package:flutter_core/views/pages/widget_tree.dart';
import 'package:flutter_core/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerMail = TextEditingController(text: '123');
  TextEditingController controllerPw = TextEditingController(text: '456');
  String confirmedMail = '123';
  String confirmedPw = '456';
  @override
  void dispose() {
    controllerMail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),

            child: Column(
              children: [
                HeroWidget(title: widget.title),
                SizedBox(height: 40.9),
                TextField(
                  controller: controllerMail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    hint: Text('Email'),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: controllerPw,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    hint: Text('Password'),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 18.9),
                ElevatedButton(
                  onPressed: () {
                    loginAuth();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 38.0),
                  ),
                  child: Text(widget.title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginAuth() {
    if (confirmedMail == controllerMail.text &&
        confirmedPw == controllerPw.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    }
  }
}
