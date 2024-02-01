import 'package:flutter/material.dart';
import 'package:movie_filmku/providers/new_coming_provider.dart';
import 'package:movie_filmku/providers/popular_cast_provider.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/actors_widget.dart';
import 'package:movie_filmku/widget/new_comming_widget.dart';
import 'package:provider/provider.dart';

class ExploreMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CastProvider castProvider = Provider.of<CastProvider>(context);
    NewComingProvider newComingProvider =
        Provider.of<NewComingProvider>(context);

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
                  'Discover\nGreat Movies',
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
            children: castProvider.popularCast
                .map(
                  (popularCast) => PopularActor(popularCast),
                )
                .toList(),
          ),
        ),
      );
    }

    Widget newComing(NewComingProvider newComingProvider) {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
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
            SizedBox(height: 8),
            Container(
              height: 300, // Sesuaikan tinggi sesuai kebutuhan
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: newComingProvider.newComing.length,
                itemBuilder: (context, index) {
                  return NewMovieOne(newComingProvider.newComing[index]);
                },
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
          newComing(newComingProvider),
        ],
      ),
    );
  }
}
