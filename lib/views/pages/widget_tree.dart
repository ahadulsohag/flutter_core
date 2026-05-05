import 'package:flutter/material.dart';
import 'package:flutter_core/data/notifiers.dart';
import 'package:flutter_core/views/pages/home_page.dart';
import 'package:flutter_core/views/pages/money_page.dart';
import 'package:flutter_core/views/pages/profile_page.dart';
import 'package:flutter_core/views/pages/settings_page.dart';
import 'package:flutter_core/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage(), MoneyPage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter', style: TextStyle(color: Colors.red)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              selectedIconNotifier.value = !selectedIconNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: selectedIconNotifier,
              builder: (context, selectedIcon, child) {
                return Icon(selectedIcon ? Icons.sunny : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: 'Settings Page haha');
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
