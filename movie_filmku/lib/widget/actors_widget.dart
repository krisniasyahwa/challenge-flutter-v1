import 'package:flutter/material.dart';
import 'package:movie_filmku/models/popular_cast_model.dart';
import 'package:movie_filmku/theme.dart';

class PopularActor extends StatelessWidget {
  final CastModel popularCast;
  PopularActor(this.popularCast);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${popularCast.profilePath}',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 60,
              child: Text(
                popularCast.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularActor2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/image_actor2.jpg',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 60,
              child: Text(
                'Leo',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularActor3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/image_actor3.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 60,
              child: Text(
                'Sintha',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularActor4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/image_actor4.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 60,
              child: Text(
                'Fly',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
