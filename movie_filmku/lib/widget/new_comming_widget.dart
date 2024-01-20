import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';

class NewMovieOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 8),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/coming1.png',
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Fall Season B2',
            style: anotherTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  margin: const EdgeInsets.only(left: 0, right: 4),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icon_star.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewMovieTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 8),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/comming2.png',
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Silicon Valey X',
            style: anotherTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Container(
                  margin: const EdgeInsets.only(left: 0, right: 4),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icon_star.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewMovieThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 8),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/comming3.png',
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Chrery Was A',
            style: anotherTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              for (int i = 0; i < 2; i++)
                Container(
                  margin: const EdgeInsets.only(left: 0, right: 4),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icon_star.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewMovieFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 8),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/comming4.png',
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Lost City, Again',
            style: anotherTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin: const EdgeInsets.only(left: 0, right: 4),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icon_star.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
