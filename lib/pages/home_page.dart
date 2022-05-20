import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviez_streaming_dark_app/theme.dart';
import 'package:moviez_streaming_dark_app/widgets/movie_card.dart';
import 'package:moviez_streaming_dark_app/widgets/movie_list.dart';
import 'package:moviez_streaming_dark_app/widgets/title_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildCarousel() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieCard(
                title: 'John Wick 4',
                genre: 'Action, Crime',
                image: 'assets/image_movie1.png',
                rating: 5,
              ),
              MovieCard(
                title: 'Bohemian',
                genre: 'Documentary',
                image: 'assets/image_movie2.png',
                rating: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildList() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: GoogleFonts.averiaSansLibre(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mWHiteColor),
            ),
            SizedBox(
              height: 20,
            ),
            MovieList(
              image: 'assets/image_movie3.png',
              title: 'Mulan',
              genre: 'History, War',
              rating: 3,
            ),
            MovieList(
              image: 'assets/image_movie4.png',
              title: 'Beauty & Beast',
              genre: 'Sci-fiction',
              rating: 5,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: mBlackColor,
      body: ListView(
        children: [
          TitleApp(),
          SizedBox(
            height: 30,
          ),
          buildCarousel(),
          buildList(),
        ],
      ),
    );
  }
}
