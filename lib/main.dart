import 'package:flutter/material.dart';

void main() {
  runApp(const VolunteerApp());
}

class VolunteerApp extends StatelessWidget {
  const VolunteerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voluntariado IDMJI',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('Voluntariado IDMJI'),
        ),
      ),
    );
  }
}