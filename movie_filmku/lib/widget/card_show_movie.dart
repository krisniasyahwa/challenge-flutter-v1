import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';
import 'package:movie_filmku/screens/detail_movie_page.dart';

class MovieShowCard extends StatefulWidget {
  @override
  State<MovieShowCard> createState() => _MovieShowCardState();
}

class _MovieShowCardState extends State<MovieShowCard> {
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
        margin: const EdgeInsets.only(top: 20, right: 8, left: 2),
        width: 143,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/spiderman.png',
                fit: BoxFit.cover,
                height: 206,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Spiderman: No Way Home",
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
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
                      '\9.1/10 IMDb',
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

class MovieShowCardEternal extends StatefulWidget {
  @override
  State<MovieShowCardEternal> createState() => _MovieShowCardEternalState();
}

class _MovieShowCardEternalState extends State<MovieShowCardEternal> {
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
        margin: const EdgeInsets.only(top: 16, right: 8, left: 2),
        width: 143,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/eternals.png',
                fit: BoxFit.cover,
                height: 210,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Eternals",
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
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
                      '9.5/10 IMDb',
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

class MovieShowCardShangChi extends StatefulWidget {
  @override
  State<MovieShowCardShangChi> createState() => _MovieShowCardShangChiState();
}

class _MovieShowCardShangChiState extends State<MovieShowCardShangChi> {
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
        margin: const EdgeInsets.only(top: 16, right: 8, left: 2),
        width: 143,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/shangchi.png',
                fit: BoxFit.cover,
                height: 210,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Shang-Chi",
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
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
                      '8.1/10 IMDb',
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
