import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/constants.dart';
import '../Utils/utils.dart';
import 'build_text_widget.dart';

class BuildGoogleSignInButton extends StatefulWidget {
  final void Function() onPress;

  const BuildGoogleSignInButton({super.key, required this.onPress});

  @override
  State<BuildGoogleSignInButton> createState() =>
      _BuildGoogleSignInButtonState();
}

class _BuildGoogleSignInButtonState extends State<BuildGoogleSignInButton> {
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
          widget.onPress();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "asset/images/logos_google-icon (1).svg",
              height: 20,
              width: 20,
              // color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            BuildTextWidget(
              size: 16,
              isUnderlined: false,
              text: "Continue with Google",
              color: Constants.kitGradients[19],
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
