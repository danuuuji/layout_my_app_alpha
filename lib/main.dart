import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_my_app_alpha/ui/navigation/main_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final mainNavigation = MainNavigation();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
            displayLarge: const TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
            // TRY THIS: Change one of the GoogleFonts
            //           to "lato", "poppins", or "lora".
            //           The title uses "titleLarge"
            //           and the middle text uses "bodyMedium".
            titleLarge: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              letterSpacing: 0.15,
            ),
            bodyMedium: GoogleFonts.merriweather(),
            displaySmall: GoogleFonts.roboto(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                letterSpacing: 0.4),
            labelLarge: GoogleFonts.roboto(
              fontSize: 14,
              letterSpacing: 1.25,
            )),
      ),
      routes: mainNavigation.routes,
      //initialRoute: mainNavigation.initialRoute(model.isAuth),
      initialRoute: mainNavigation.initialRoute(),
    );
  }
}
