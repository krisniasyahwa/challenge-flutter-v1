import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';

class CastWidgetOne extends StatelessWidget {
  const CastWidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 4),
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/image_cast1.png',
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Tom Holland',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class CastWidgetTwo extends StatelessWidget {
  const CastWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 4),
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/image_cast2.png',
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Zendaya',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class CastWidgetThree extends StatelessWidget {
  const CastWidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 4),
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/image_cast3.png',
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Benedict Cumberbatch',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class CastWidgetFour extends StatelessWidget {
  const CastWidgetFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 4),
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/image_cast4.png',
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Jason Batalon',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
