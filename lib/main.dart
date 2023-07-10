import 'package:flutter/material.dart';
import 'package:tv_show_app/presentation/screens/characters_screen.dart';

import 'app_routs.dart';

void main() {
  runApp(RickAndMortyApp(
    appRouter: AppRouter(),
  ));
}

class RickAndMortyApp extends StatelessWidget {
  final AppRouter appRouter;

  const RickAndMortyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
