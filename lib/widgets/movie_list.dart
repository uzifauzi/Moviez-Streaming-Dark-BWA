import 'package:flutter/material.dart';
import 'package:moviez_streaming_dark_app/theme.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    Key? key,
    this.title = '',
    this.genre = '',
    this.image = '',
    this.rating = 0,
  }) : super(key: key);

  final String title;
  final String genre;
  final String image;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(image: AssetImage(image))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: whiteTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                genre,
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 20,
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
          )
        ],
      ),
    );
  }
}
