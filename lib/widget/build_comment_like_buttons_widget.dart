import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import 'build_icon_button_widget.dart';
import 'build_text_widget.dart';

class BuildCommentLikeButtonWidget extends StatefulWidget {
  const BuildCommentLikeButtonWidget({super.key});

  @override
  State<BuildCommentLikeButtonWidget> createState() =>
      _BuildCommentLikeButtonWidgetState();
}

class _BuildCommentLikeButtonWidgetState
    extends State<BuildCommentLikeButtonWidget> {
  bool isLiked = false;
  bool isDisLiked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: BuildIconButtonWidget(
                    icon:
                        isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                    iconSize: 20,
                    iconColor: isLiked
                        ? Constants.kitGradients[19]
                        : Constants.kitGradients[1],
                    onPressed: () {
                      print("tapped");
                      // print(isLiked);
                      setState(() {
                        isLiked = true;
                      });
                      if (isLiked == true) {
                        setState(() {
                          isDisLiked = false;
                        });
                      } else {
                        setState(() {
                          isDisLiked = true;
                        });
                      }
                    }),
              ),
              Expanded(
                child: BuildTextWidget(
                    text: "1",
                    color: Constants.kitGradients[1],
                    fontWeight: FontWeight.w300,
                    size: 10),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                child: BuildIconButtonWidget(
                    icon: isDisLiked
                        ? Icons.thumb_down
                        : Icons.thumb_down_alt_outlined,
                    iconSize: 20,
                    iconColor: isDisLiked
                        ? Constants.kitGradients[19]
                        : Constants.kitGradients[1],
                    onPressed: () {
                      setState(() {
                        isDisLiked = true;
                      });
                      if (isDisLiked == true) {
                        setState(() {
                          isLiked = false;
                        });
                      } else {
                        setState(() {
                          isLiked = true;
                        });
                      }
                    }),
              ),
              Expanded(
                child: BuildTextWidget(
                    text: "1",
                    color: Constants.kitGradients[1],
                    fontWeight: FontWeight.w300,
                    size: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
