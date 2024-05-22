import 'package:flutter/material.dart';
import 'Route/App_Route.dart';

void main() {
  runApp( MyApp()
  );
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _approute=AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _approute.config(),
    );
  }
}
