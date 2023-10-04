import 'package:flutter/material.dart';
import 'package:matchy/Utils/colors.dart';

import 'Utils/Routes/routes.dart';
import 'Utils/Routes/routesNames.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental App',
      locale: const Locale("es"),
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(background: Colors.white,
            seedColor: const Color(0xFF11387f)),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.calendarScreen,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}

