import 'package:flutter/material.dart';
import 'package:movie_filmku/models/new_coming_model.dart';
import 'package:movie_filmku/theme.dart';

class NewMovieOne extends StatelessWidget {
  final NewComingModel newComing;
  NewMovieOne(this.newComing);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 8),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              'https://image.tmdb.org/t/p/w500/${newComing.posterPath}',
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            newComing.title,
            style: anotherTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
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
