import 'package:flutter/material.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/main_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, background: AppColor.backgroundColor),
        useMaterial3: true,
      ),
      home: const MainApp(),
    );
  }
}
