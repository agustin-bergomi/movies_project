import 'package:flutter/material.dart';
import 'constants.dart';

class MovieInfo extends StatefulWidget {
  const MovieInfo({super.key});

  @override
  State<MovieInfo> createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppConstants.movieInfoMainPadding,
        AppConstants.movieInfoMainPaddingTop,
        AppConstants.movieInfoMainPadding,
        AppConstants.movieInfoMainPaddingTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            AppConstants.movieTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppConstants.movieTitleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Flexible(
                child: Wrap(
                  children: [
                    Text(
                      AppConstants.moviePlot,
                      style: TextStyle(
                        fontSize: AppConstants.plotFontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      AppConstants.releaseDate,
                      style: TextStyle(
                        fontSize: AppConstants.plotFontSize,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: AppConstants.posterWidth,
                child: Image.asset(
                  AppConstants.posterImagePath,
                  width: AppConstants.posterWidth,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
