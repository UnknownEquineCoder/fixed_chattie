import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './app_theme.dart';
import './screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chattie UI',
      theme: ThemeData(
        primaryColor: MyTheme.kPrimaryColor,
        accentColor: MyTheme.kAccentColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: MaterialColor(
          MyTheme.kPrimaryColor.value,
          <int, Color>{
            50: MyTheme.kPrimaryColor.withOpacity(0.1),
            100: MyTheme.kPrimaryColor.withOpacity(0.2),
            200: MyTheme.kPrimaryColor.withOpacity(0.3),
            300: MyTheme.kPrimaryColor.withOpacity(0.4),
            400: MyTheme.kPrimaryColor.withOpacity(0.5),
            500: MyTheme.kPrimaryColor.withOpacity(0.6),
            600: MyTheme.kPrimaryColor.withOpacity(0.7),
            700: MyTheme.kPrimaryColor.withOpacity(0.8),
            800: MyTheme.kPrimaryColor.withOpacity(0.9),
            900: MyTheme.kPrimaryColor.withOpacity(1),
          },
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
