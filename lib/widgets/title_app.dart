import 'package:flutter/material.dart';
import 'package:moviez_streaming_dark_app/theme.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin, top: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Moviez',
                style: whiteTextStyle.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Watch much easier',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
          Container(
            width: 55,
            height: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/button_search.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
