import 'package:cashbook/utils/routes/routes.dart';
import 'package:cashbook/utils/routes/routes_names.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      supportedLocales: const [
        Locale("en"),
        Locale("ur"),
        Locale("ar"),
        // Add more if needed
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
     initialRoute: RoutesNames.onboard,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}


