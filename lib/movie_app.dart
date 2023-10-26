import 'package:flutter/material.dart';
import 'movie_home_page.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: const MovieHomePage(),
    );
  }
}
