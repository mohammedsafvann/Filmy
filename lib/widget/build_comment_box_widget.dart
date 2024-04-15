import 'package:desk_live/widget/build_comment_like_buttons_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import '../Utils/utils.dart';
import 'build_circle_avatar.dart';
import 'build_icon_button_widget.dart';
import 'build_text_widget.dart';

class BuildCommentBoxWidget extends StatefulWidget {
  final Function onTap;
  const BuildCommentBoxWidget({super.key, required this.onTap});

  @override
  State<BuildCommentBoxWidget> createState() => _BuildCommentBoxWidgetState();
}

class _BuildCommentBoxWidgetState extends State<BuildCommentBoxWidget> {
  bool isLiked = false;
  bool isDisLiked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context),
      height: screenHeight(context, dividedBy: 7),
      child: ListTile(
        leading: const BuildCircleAvatar(
            radius: 20,
            image: NetworkImage("https://w"
                "ww.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg")),
        title: Row(
          children: [
            BuildTextWidget(
                fontWeight: FontWeight.w500,
                text: "Augustina",
                color: Constants.kitGradients[1],
                size: 15),
            const SizedBox(
              width: 15,
            ),
            BuildTextWidget(
              fontWeight: FontWeight.w400,
              text: "12 days ago",
              color: Constants.kitGradients[1],
              size: 10,
            )
          ],
        ),
        subtitle: BuildTextWidget(
            text: "hello",
            color: Constants.kitGradients[1],
            size: 13,
            fontWeight: FontWeight.w300),
        trailing: const BuildCommentLikeButtonWidget(),
      ),
    );
  }
}
