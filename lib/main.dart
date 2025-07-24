import 'package:cashbook/pratice/firebase_services/splash_services.dart';
import 'package:cashbook/pratice/practice.dart';
import 'package:cashbook/pratice/ui/splash_screen.dart';
import 'package:cashbook/utils/routes/routes.dart';
import 'package:cashbook/utils/routes/routes_names.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  // await Supabase.initialize(
  //   url: 'https://qjepzihyfrzjtzbbhhzu.supabase.co', // 🔁 Replace
  //   anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFqZXB6aWh5ZnJ6anR6YmJoaHp1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTIyOTc0MzksImV4cCI6MjA2Nzg3MzQzOX0.18_4npzRtWupFCzL3lQPTdOKvdUNAF6kQ2mMfVmC_-Q', // 🔁 Replace
  // );
  runApp(const MyApp());
}
final supabase=Supabase.instance.client;
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
     home:SplashScreen(),
   //    initialRoute: RoutesNames.onboard,
   //    onGenerateRoute: Routes.generateRoute,
    );
  }
}


