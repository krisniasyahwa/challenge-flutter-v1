import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/widget/cast_list_widget.dart';

class DetailMoviePage extends StatelessWidget {
  const DetailMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Image.asset(
            'assets/detail_spiderman.png',
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
            bottom: 110,
            left: 160,
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
            Text(
              'Cast',
              style: TextStyle(
                fontFamily: 'Merriweather',
                color: primaryTextColor,
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
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
                          'Spiderman: No Way\nHome',
                          style: primaryTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
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
                                  '9.1/10 IMDb',
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
                    'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
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
