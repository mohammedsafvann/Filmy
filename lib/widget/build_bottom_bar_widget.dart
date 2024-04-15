import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/views/comment_page.dart';
import 'package:desk_live/widget/build_icon_button_widget.dart';
import 'package:desk_live/widget/build_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Utils/utils.dart';

class BuildBottomBarWidget extends StatefulWidget {
  final bool bottomBarColor;
  const BuildBottomBarWidget({super.key, required this.bottomBarColor});

  @override
  State<BuildBottomBarWidget> createState() => _BuildBottomBarWidgetState();
}

class _BuildBottomBarWidgetState extends State<BuildBottomBarWidget> {
  bool isLiked = false;
  bool isDisLiked = false;
  bool isFavourite = false;
  num likesCount = 0;
  num disLikesCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      height: screenHeight(context, dividedBy: 9),
      decoration: widget.bottomBarColor
          ? BoxDecoration(
              color: Constants.kitGradients[1],
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            )
          : const BoxDecoration(),
      child: Padding(
        padding: widget.bottomBarColor
            ? const EdgeInsets.only(right: 15, left: 10)
            : const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BuildIconButtonWidget(
                  icon: isLiked == true
                      ? Icons.thumb_up
                      : Icons.thumb_up_alt_outlined,
                  iconSize: 30,
                  iconColor: isLiked == true
                      ? Constants.kitGradients[19]
                      : Constants.kitGradients[0],
                  onPressed: () {
                    setState(() {
                      isLiked = true;
                      // likesCount++;
                    });
                    if (isLiked == true) {
                      setState(() {
                        isDisLiked = false;
                        // disLikesCount--;
                      });
                    }
                  },
                ),
                BuildTextWidget(
                    text: likesCount.toString(),
                    color: Constants.kitGradients[0],
                    fontWeight: FontWeight.w300,
                    size: 10)
              ],
            ),
            Column(
              children: [
                BuildIconButtonWidget(
                  icon: isDisLiked
                      ? Icons.thumb_down
                      : Icons.thumb_down_alt_outlined,
                  iconSize: 30,
                  iconColor: isDisLiked
                      ? Constants.kitGradients[19]
                      : Constants.kitGradients[0],
                  onPressed: () {
                    setState(() {
                      isDisLiked = true;
                      // disLikesCount++;
                    });
                    if (isDisLiked == true) {
                      setState(() {
                        isLiked = false;
                        // likesCount--;
                      });
                    }
                  },
                ),
                BuildTextWidget(
                    text: disLikesCount.toString(),
                    color: Constants.kitGradients[0],
                    fontWeight: FontWeight.w300,
                    size: 10)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return const CommentPage();
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                  );
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "asset/images/message.svg",
                        height: 25,
                        color: Constants.kitGradients[0],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BuildTextWidget(
                          text: "1",
                          color: Constants.kitGradients[0],
                          fontWeight: FontWeight.w300,
                          size: 10)
                    ],
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10),
            //   child: SizedBox(
            //     child: Column(
            //       children: [
            //         SvgPicture.asset(
            //           "asset/images/share.svg",
            //           height: 25,
            //           color: Constants.kitGradients[0],
            //         ),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        isFavourite
                            ? "asset/images/favourite.svg"
                            : "asset/images/favourite1.svg",
                        height: 25,
                        color: isFavourite
                            ? Constants.kitGradients[0]
                            : Constants.kitGradients[19],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
