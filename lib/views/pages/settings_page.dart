import 'package:flutter/material.dart';
import 'package:flutter_core/widgets/hero_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_core/classes/activity_classes.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            widget = CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            widget = Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeroWidget(title: 'HELL YEAH'),
                    Text(activity.activity),
                  ],
                ),
              ),
            );
          } else {
            widget = Center(child: Text('Error'));
          }
          return widget;
        },
      ),
    );
  }
}
