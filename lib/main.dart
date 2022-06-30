import 'package:ffxiv_opener/models/ability_data.dart';
import 'package:ffxiv_opener/models/timeline_data.dart';
import 'package:ffxiv_opener/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_scheme.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AbilityData()),
        ChangeNotifierProvider(create: (context) => TimelineData()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
        },
      ),
    );
  }
}
