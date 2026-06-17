import 'package:flutter/material.dart';
import 'package:voluntariado_idmji/features/home/presentation/pages/home_page.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<void>(
          builder: (_) => const HomePage(),
          settings: settings,
        );

      default:
        return MaterialPageRoute<void>(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Ruta no encontrada'),
            ),
          ),
          settings: settings,
        );
    }
  }
}