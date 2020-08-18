import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'CO'), // Hebrew, no country code
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getApllicationRoutes(),
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
