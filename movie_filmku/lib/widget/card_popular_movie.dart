import 'package:flutter/material.dart';
import 'package:movie_filmku/models/popular_movie_model.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/screens/detail_movie_page.dart';

class CardPopularMovieOne extends StatelessWidget {
  final PopularMovieModel popularMovie;
  CardPopularMovieOne(this.popularMovie);

  @override
  Widget build(BuildContext context) {
    double popularRated =
        double.parse(popularMovie.voteAverage.toStringAsFixed(1));

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailMoviePage(this.popularMovie),
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
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${popularMovie.posterPath}',
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
                    popularMovie.title,
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
                      '${popularRated.toString()}/10 IMDb',
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
                          'ROMANCE',
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
