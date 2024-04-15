import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'build_text_widget.dart';

class BuildBookMarkWidget extends StatefulWidget {
  const BuildBookMarkWidget({super.key});

  @override
  State<BuildBookMarkWidget> createState() => _BuildBookMarkWidgetState();
}

class _BuildBookMarkWidgetState extends State<BuildBookMarkWidget> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, dividedBy: 1.3),
      height: screenHeight(context, dividedBy: 7.5),
      decoration: BoxDecoration(
        color: Constants.kitGradients[20],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://img.onmanorama.com/content/dam/mm/en/kerala/top-news/images/2023/7/6/kerala-rain-umbrella.jpg"),
          ),
          SizedBox(
            width: screenWidth(context, dividedBy: 2),
            child: BuildTextWidget(
                maximumLine: 3,
                fontWeight: FontWeight.w500,
                text: "കേരളത്തിൽ2 ജില്ലകളിൽയെല്ലോ അലർട്ട് പ്രഖ്യാപിച്ചു...",
                color: Constants.kitGradients[1],
                size: 13),
          ),
          InkWell(
            onTap: () {
              setState(() {});
            },
            child: SizedBox(
              child: SvgPicture.asset(
                "asset/images/favourite1.svg",
                height: 20,
                color: Constants.kitGradients[19],
              ),
            ),
          )
        ],
      ),
    );
  }
}
