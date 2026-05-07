import 'package:flutter/material.dart';
import 'package:flutter_core/data/constants.dart';
import 'package:flutter_core/data/notifiers.dart';
import 'package:flutter_core/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/browser.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    init();
    initThemeMode();
    super.initState();
  }

  Future<void> init() async {
    initializeTimeZone();
    setLocalLocation(getLocation('Asia/Dhaka'));
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/launcher_icon',
    );
    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings();
    const InitializationSettings initializationSettings =
        InitializationSettings(android: androidSettings, iOS: iosSettings);
    await notificationsPlugin.initialize(settings: initializationSettings);
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(kConstants.themeModeKey);
    selectedIconNotifier.value = repeat ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIconNotifier,
      builder: (context, selectedIcon, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: selectedIcon ? Brightness.light : Brightness.dark,
            ),
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WelcomePage();
  }
}
