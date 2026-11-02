import 'package:flutter/material.dart';

import 'screens/lista_bicos_page.dart';

void main() {
  runApp(const BicoLocalApp());
}

class BicoLocalApp extends StatelessWidget {
  const BicoLocalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BicoLocal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
      home: const ListaBicosPage(),
    );
  }
}