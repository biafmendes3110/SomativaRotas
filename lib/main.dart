import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'tela5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas nomeadas',
      initialRoute: '/',
      routes: {
        '/': (context) => Tela1(),
        '/segunda': (context) => const tela2(),
        '/terceira': (context) => const tela3(),
        '/quarta': (context) => const tela4(),
        '/quinta': (context) => const tela5(),
      }
    );
  }
}
