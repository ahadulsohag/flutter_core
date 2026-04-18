import 'package:flutter/material.dart';
import 'package:flutter_core/data/constants.dart';
import 'package:flutter_core/views/pages/welcome_page.dart';
import 'package:flutter_core/widgets/hero_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),

      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Hello'),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomePage();
                    },
                  ),
                );
              },
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Basic Layout', style: KTextStyle.titleTealText),
                        Text(
                          'Advanced Layout \nAnd Future Layout',
                          style: KTextStyle.descriptionTealText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
