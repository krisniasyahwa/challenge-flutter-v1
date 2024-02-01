import 'package:flutter/material.dart';
import 'package:movie_filmku/models/popular_movie_model.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/screens/detail_movie_page.dart';
import 'package:movie_filmku/models/now_playing_model.dart';

class MovieShowCard extends StatefulWidget {
  final NowPlayingModel nowPlaying;
  MovieShowCard(this.nowPlaying);

  @override
  State<MovieShowCard> createState() => _MovieShowCardState();
}

class _MovieShowCardState extends State<MovieShowCard> {
  @override
  Widget build(BuildContext context) {
    double nowRated =
        double.parse(widget.nowPlaying.voteAverage.toStringAsFixed(1));

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailMoviePage(widget.nowPlaying),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 8, left: 2),
        width: 143,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${widget.nowPlaying.posterPath}',
                fit: BoxFit.cover,
                height: 206,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              widget.nowPlaying.originalTitle,
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon_star.png',
                    width: 12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
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
    );
  }
}
