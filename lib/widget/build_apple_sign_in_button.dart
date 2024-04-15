import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/constants.dart';
import '../Utils/utils.dart';
import 'build_text_widget.dart';

class BuildAppleSignInButton extends StatefulWidget {
  final Function onTap;
  const BuildAppleSignInButton({super.key, required this.onTap});

  @override
  State<BuildAppleSignInButton> createState() => _BuildAppleSignInButtonState();
}

class _BuildAppleSignInButtonState extends State<BuildAppleSignInButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: screenWidth(context, dividedBy: 1.4),
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: Constants.kitGradients[1]),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        onPressed: () {
          widget.onTap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "asset/images/AppleIcon.svg",
              height: 20,
              width: 20,
              color: Constants.kitGradients[0],
            ),
            const SizedBox(
              width: 20,
            ),
            BuildTextWidget(
              fontFamily: 'GeneralSans-Regular.ttf',
              size: 16,
              isUnderlined: false,
              text: "Log In With Apple",
              color: Constants.kitGradients[19],
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
