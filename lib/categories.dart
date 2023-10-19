import 'package:flutter/material.dart';
import 'constants.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (String category in AppConstants.categories)
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppConstants.categoriesPadding,
              top: AppConstants.categoriesPadding,
              left: AppConstants.categoriesPaddingLeft,
              right: AppConstants.categoriesPadding,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.mainContainerHorizontalInset,
                vertical: AppConstants.mainContainerVerticalInset,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                  AppConstants.boxDecorationBorderRadius,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Text(
                category,
                style: const TextStyle(
                  fontSize: AppConstants.categoriesTextSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
