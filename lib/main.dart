import 'package:flutter/material.dart';
import 'router.dart'; // Import the router we just created

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Demo',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
