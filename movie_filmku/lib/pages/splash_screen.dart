import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/button_auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushNamed(context, '/login'), 
    );

    super.initState();
  }

  Widget build(BuildContext context) {
    Widget descriptionCenter() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Info Film',
              style: splashTextStyle.copyWith(
                fontSize: 35,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'More Trending Movies',
              style: primaryTextStyle.copyWith(
                fontSize: 30,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Get Ready to dive into the greatest\nstories in TV & Film',
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: ButtonAuth(
                color: backgroundColor2,
                margin: EdgeInsets.zero,
                height: 50,
                width: double.infinity,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                    color: primaryTextColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have account ?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    color: const Color(0xff9C9C9C),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/register'),
                  child: Text(
                    'Sign Up',
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, color: primaryTextColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/image_splash.png',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
              ),
            ],
          ),
          descriptionCenter(),
        ],
      );
    }

    

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: content(),
    );
  }
}
