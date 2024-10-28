import 'package:app_widgets/configuration/router/router.dart';
import 'package:app_widgets/configuration/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Mi App',
      debugShowCheckedModeBanner: false,
      theme: ClassTemaApp(colorSeleccionado: 7).datosTema(),
    );
  }
}
