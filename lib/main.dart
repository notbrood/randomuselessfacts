import 'package:flutter/material.dart';
import 'package:randomuselessfacts/screens/home_screen.dart';

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
        bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.transparent),
      primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
