import 'package:flutter/material.dart';
import 'constants.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<StatefulWidget> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLikeButtonPressed = false;
  int likesAmount = AppConstants.startingLikesAmount;

  void onLikeButtonPressed() {
    if (isLikeButtonPressed) {
      likesAmount--;
      isLikeButtonPressed = false;
    } else {
      likesAmount++;
      isLikeButtonPressed = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppConstants.iconPaddingBottom,
        right: AppConstants.iconPaddingRight,
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          width: AppConstants.likeButtonSizedBoxWidth,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            onPressed: onLikeButtonPressed,
            child: Row(
              children: [
                isLikeButtonPressed
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: AppConstants.favoriteIconSize,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: AppConstants.favoriteIconSize,
                      ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: AppConstants.iconPaddingRight,
                  ),
                ),
                Text(
                  '$likesAmount',
                  style: const TextStyle(
                    fontSize: AppConstants.buttonFontSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
