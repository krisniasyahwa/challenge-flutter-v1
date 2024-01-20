import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/actors_widget.dart';
import 'package:movie_filmku/widget/card_show_movie.dart';
import 'package:movie_filmku/widget/card_popular_movie.dart';
import 'package:movie_filmku/screens/detail_movie_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNavbar() {
      return Container(
        margin: const EdgeInsets.only(top: 0),
        child: ClipRRect(
          child: BottomNavigationBar(
            backgroundColor: backgroundColor1,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Image.asset(
                    'assets/navbar1.png',
                    width: 28,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/explore_movie');
                    },
                    child: Image.asset(
                      'assets/navbar2.png',
                      width: 24,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Image.asset(
                    'assets/navbar3.png',
                    width: 24,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    AppBar header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            'assets/icon_menu.png',
            width: 24,
            height: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/icon_notif.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
        title: Text(
          "FilmKu",
          style: TextStyle(
            fontSize: 16,
            fontWeight: semiBold,
            fontFamily: 'Merriweather',
          ),
        ),
        centerTitle: true,
      );
    }

    Widget headerNowShowing() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Now Showing",
                    style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: primaryTextColor,
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 0.5,
                        color: primaryTextColor,
                      ),
                    ),
                    child: Text(
                      "See more",
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget listNowShowing() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MovieShowCard(),
            MovieShowCardEternal(),
            MovieShowCardShangChi(),
          ],
        ),
      );
    }

    Widget actors() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Text(
          'Popular Actors',
          textAlign: TextAlign.start,
          style: anotherTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
            color: primaryTextColor,
          ),
        ),
      );
    }

    Widget listActors() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PopularActor1(),
            PopularActor2(),
            PopularActor3(),
            PopularActor4(),
          ],
        ),
      );
    }

    Widget headerPopular() {
      return Container(
        margin: const EdgeInsets.only(top: 0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Popular",
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  color: primaryTextColor,
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 0.5,
                  color: Colors.white,
                ),
              ),
              child: Text(
                "See more",
                style: primaryTextStyle.copyWith(
                  fontSize: 10,
                  color: primaryTextColor,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget listPopularMovie() {
      return Column(
        children: [
          CardPopularMovieOne(),
          CardPopularMovieTwo(),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 2),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              headerNowShowing(),
              listNowShowing(),
              actors(),
              listActors(),
              headerPopular(),
              listPopularMovie(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: header(),
      body: content(),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
