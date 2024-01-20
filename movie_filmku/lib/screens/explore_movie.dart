import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/actors_widget.dart';
import 'package:movie_filmku/widget/new_comming_widget.dart';

class ExploreMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Discover Great\nMovies',
                  style: anotherTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                    color: primaryTextColor,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/icon_notification.png',
              height: 38,
              width: 38,
            ),
          ],
        ),
      );
    }

    Widget featuredMovie() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Featured",
                        style: anotherTextStyle.copyWith(
                          color: primaryTextColor,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Image.asset('assets/harrypotter.png'),
              ],
            ),
            Positioned(
              bottom: 70,
              left: 150,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/button_play.png',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(height: 0),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget actors() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Actors',
              textAlign: TextAlign.start,
              style: anotherTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: primaryTextColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios, size: 16),
              color: primaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget listActors() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularActor1(),
              PopularActor2(),
              PopularActor3(),
              PopularActor4(),
            ],
          ),
        ),
      );
    }

    Widget newComing() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Coming",
              style: anotherTextStyle.copyWith(
                color: primaryTextColor,
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      NewMovieOne(),
                      NewMovieTwo(),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      NewMovieThree(),
                      NewMovieFour(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          featuredMovie(),
          actors(),
          listActors(),
          newComing(),
        ],
      ),
    );
  }
}
