import 'package:flutter/material.dart';

import 'constants.dart';

class AverageRating extends StatelessWidget {
  const AverageRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: AppConstants.averageRatingLeftInsets,
      ),
      child: Expanded(
        child: Row(
          children: [
            Icon(
              Icons.star,
              size: AppConstants.iconSize,
              color: Colors.yellow,
            ),
            SizedBox(
              width: AppConstants.averageRatingSizedBoxWidth,
            ),
            Text(
              AppConstants.rating,
              style: TextStyle(
                fontSize: AppConstants.ratingFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
