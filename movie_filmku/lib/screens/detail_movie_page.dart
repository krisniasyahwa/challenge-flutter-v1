import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/cast_list_widget.dart';

class DetailMoviePage extends StatelessWidget {
  final dynamic movie;
  DetailMoviePage(this.movie);

  @override
  Widget build(BuildContext context) {
    double nowRated = double.parse(movie.voteAverage.toStringAsFixed(1));

    Widget header() {
      return Stack(
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: primaryTextColor,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: primaryTextColor,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 250,
            left: 170,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/button_plays.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Play Trailer',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                    color: primaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget artisMovie() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                  margin: const EdgeInsets.only(
                      left: 8), // Adjust the margin as needed
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CastWidgetOne(),
                  CastWidgetTwo(),
                  CastWidgetThree(),
                  CastWidgetFour(),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          color: backgroundColor1,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.originalTitle,
                          style: primaryTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_star.png',
                                width: 12,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  '${nowRated.toString()}/10 IMDb',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/navbar3.png'),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 16,
                      fontWeight: bold,
                      color: primaryTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    movie.overview,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            artisMovie(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
