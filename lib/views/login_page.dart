import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/views/home_view.dart';

import 'package:desk_live/widget/build_google_sign_in_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widget/build_apple_sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAndroid = false;
  @override
  void initState() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      setState(() {
        isAndroid = true;
      });
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kitGradients[1],
      body: Column(
        children: [
          SizedBox(
            width: screenWidth(context),
            height: screenHeight(context) / 1.5,
          ),
          Center(
            child: isAndroid
                ? BuildGoogleSignInButton(
                    onPress: () {
                      pushAndReplacement(context, const HomeView());
                    },
                  )
                : BuildAppleSignInButton(onTap: () {
                    pushAndReplacement(context, const HomeView());
                  }),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
