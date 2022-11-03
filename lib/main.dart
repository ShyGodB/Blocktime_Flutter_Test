import 'package:flutter/material.dart';
import 'pages/tabs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "block time",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tabs()
    );
  }
}
