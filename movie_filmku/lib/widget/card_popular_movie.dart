import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/screens/detail_movie_page.dart';

class CardPopularMovieOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailMoviePage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/venom.png',
                width: 85,
                height: 120,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 170,
                  child: Text(
                    'Venom Let There Be Carnage',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_star.png',
                      width: 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '6.4/10 IMDb',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        color: primaryTextColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBE3FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          'HORROR',
                          style: textiaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBE3FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          'MYSTERY',
                          style: textiaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 60,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBE3FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          'THRILLER',
                          style: textiaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_time.png',
                      width: 18,
                      height: 18,
                    ),
                    Text(
                      '1h 47m',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardPopularMovieTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailMoviePage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/kingsman.png',
                width: 85,
                height: 120,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 170,
                  child: Text(
                    'The King\'s Man',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_star.png',
                      width: 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '8.4/10 IMDb',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        color: primaryTextColor,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBE3FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          'ACTION',
                          style: textiaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBE3FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          'FANTASY',
                          style: textiaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_time.png',
                      width: 18,
                      height: 18,
                    ),
                    Text(
                      '1h 47m',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
