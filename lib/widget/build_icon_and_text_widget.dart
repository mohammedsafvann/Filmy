import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/widget/build_icon_widget.dart';
import 'package:flutter/material.dart';

import 'build_icon_button_widget.dart';
import 'build_text_widget.dart';

class BuildIconAndTextWidget extends StatefulWidget {
  final IconData icon;
  final String iconName;
  final Function onTap;
  const BuildIconAndTextWidget(
      {super.key,
      required this.icon,
      required this.iconName,
      required this.onTap});

  @override
  State<BuildIconAndTextWidget> createState() => _BuildIconAndTextWidgetState();
}

class _BuildIconAndTextWidgetState extends State<BuildIconAndTextWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: SizedBox(
          height: 40,
          width: screenWidth(context),
          child: Row(
            children: [
              BuildIconWidget(
                iconData: widget.icon,
                size: 25,
                color: Constants.kitGradients[1],
              ),
              const SizedBox(
                width: 15,
              ),
              BuildTextWidget(
                  fontWeight: FontWeight.w400,
                  text: widget.iconName,
                  color: Constants.kitGradients[1],
                  size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
