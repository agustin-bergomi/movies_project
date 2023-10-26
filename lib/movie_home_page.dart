import 'package:flutter/material.dart';
import 'app_background.dart';
import 'average_rating.dart';
import 'movie_info.dart';
import 'categories.dart';
import 'like_button.dart';

class MovieHomePage extends StatefulWidget {
  const MovieHomePage({super.key});

  @override
  State<MovieHomePage> createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            Categories(),
            AppBackground(),
            MovieInfo(),
            LikeButton(),
            AverageRating(),
          ],
        ),
      ),
    );
  }
}
