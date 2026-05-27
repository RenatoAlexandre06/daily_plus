import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // O arquivo mágico criado pelo CLI

import 'core/theme/app_theme.dart';
import 'features/home/home_page.dart';

void main() async {
  // Garante que o Flutter está pronto antes de chamar código nativo (Firebase)
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa o Firebase usando as configurações geradas
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const DailyPlusApp());
}

class DailyPlusApp extends StatelessWidget {
  const DailyPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily+',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomePage(), 
    );
  }
}