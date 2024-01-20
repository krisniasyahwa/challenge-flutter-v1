import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_filmku/screens/main_page.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/pages/splash_screen.dart';
import 'package:movie_filmku/pages/register_page.dart';
import 'package:movie_filmku/pages/login_page.dart';
import 'package:movie_filmku/screens/explore_movie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => MainPage(),
        '/explore_movie': (context) => ExploreMovie(),
      },
    );
  }
}
