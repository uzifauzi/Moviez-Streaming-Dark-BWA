import 'package:flutter/material.dart';
import 'package:moviez_streaming_dark_app/theme.dart';

class MovieCard extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final double rating;

  const MovieCard({
    Key? key,
    this.image = '',
    this.title = '',
    this.genre = '',
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.circular(21),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: whiteTextStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    genre,
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: rating >= 1 ? mYellowColor : mGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 2 ? mYellowColor : mGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 3 ? mYellowColor : mGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 4 ? mYellowColor : mGreyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 5 ? mYellowColor : mGreyColor,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
