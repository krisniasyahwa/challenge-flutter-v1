import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/button_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget inputUsername() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Container(
          decoration: BoxDecoration(
            color: primaryTextColor.withOpacity(0.65),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
              color: primaryTextColor,
            ),
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 18, right: 10),
                child: Image.asset(
                  'assets/icon_username.png',
                  width: 10,
                  height: 10,
                ),
              ),
              hintStyle: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                color: primaryTextColor,
              ),
              hintText: "Masukkan Username",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Container(
          decoration: BoxDecoration(
            color: primaryTextColor.withOpacity(0.65),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
              color: primaryTextColor,
            ),
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 18, right: 10),
                child: Image.asset(
                  'assets/icon_password.png',
                  width: 10,
                  height: 10,
                ),
              ),
              hintStyle: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                color: primaryTextColor,
              ),
              hintText: "Masukkan Password Anda",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
        ),
      );
    }

    Widget buttonLogin() {
      return Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/home'),
            child: ButtonAuth(
              margin: const EdgeInsets.only(top: 20),
              color: backgroundColor2,
              height: 50,
              width: double.infinity,
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
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
      );
    }

    Widget content() {
      return SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/image_splash.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    'Login',
                    style: primaryTextStyle.copyWith(
                      fontSize: 30,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 420),
                    inputUsername(),
                    inputPassword(),
                    buttonLogin(),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: content(),
    );
  }
}
