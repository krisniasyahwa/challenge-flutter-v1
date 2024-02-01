import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_filmku/models/detail_movie_model.dart';
import 'package:movie_filmku/providers/detail_movie_provider.dart';
import 'package:movie_filmku/providers/new_coming_provider.dart';
import 'package:movie_filmku/providers/now_playing_provider.dart';
import 'package:movie_filmku/providers/popular_cast_provider.dart';
import 'package:movie_filmku/screens/main_page.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/pages/splash_screen.dart';
import 'package:movie_filmku/pages/register_page.dart';
import 'package:movie_filmku/pages/login_page.dart';
import 'package:movie_filmku/screens/explore_movie.dart';
import 'package:movie_filmku/providers/popular_movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PopularMovieProvider(),
        ),
        ChangeNotifierProvider(create: (context) => CastProvider()),
        ChangeNotifierProvider(create: (context) => NowPlayingProvider()),
        ChangeNotifierProvider(create: (context) => DetailMovieProvider()),
        ChangeNotifierProvider(create: (context) => NewComingProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/register': (context) => RegisterPage(),
          '/login': (context) => LoginPage(),
          '/home': (context) => MainPage(),
          '/explore_movie': (context) => ExploreMovie(),
        },
      ),
    );
  }
}
