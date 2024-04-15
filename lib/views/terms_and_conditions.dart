import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import '../Utils/utils.dart';
import '../widget/build_icon_widget.dart';
import '../widget/build_text_widget.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.kitGradients[0],
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              pop(context, "");
            },
            child: BuildIconWidget(
                iconData: Icons.arrow_back, color: Constants.kitGradients[0]),
          ),
          backgroundColor: Constants.kitGradients[19],
          title: BuildTextWidget(
            text: "Terms And Policies ",
            color: Constants.kitGradients[0],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                  title: BuildTextWidget(
                      text: "Acceptance of Terms",
                      color: Constants.kitGradients[1],
                      fontWeight: FontWeight.bold,
                      size: 17),
                  subtitle: BuildTextWidget(
                      color: Constants.kitGradients[1].withOpacity(0.65),
                      text:
                          "By accessing or using the Filmy news app, you agree to comply with and be bound by these terms and conditions. If you do not agree with any part of these terms, you may not access or use the app.")),
              ListTile(
                  title: BuildTextWidget(
                      text: "Use of the App",
                      color: Constants.kitGradients[1],
                      fontWeight: FontWeight.bold,
                      size: 17),
                  subtitle: BuildTextWidget(
                      color: Constants.kitGradients[1].withOpacity(0.65),
                      text:
                          "The content provided on Filmy is for informational purposes only and should not be considered professional advice.Users may not reproduce, distribute, modify, or republish any content from the app without prior written consent from Filmy.")),
              ListTile(
                  title: BuildTextWidget(
                      text: "User Conduct",
                      color: Constants.kitGradients[1],
                      fontWeight: FontWeight.bold,
                      size: 17),
                  subtitle: BuildTextWidget(
                      color: Constants.kitGradients[1].withOpacity(0.65),
                      text:
                          "Users must not engage in any activity that could harm the app, its users, or its reputation.Users are responsible for maintaining the confidentiality of their account information and for all activities that occur under their account.")),
              ListTile(
                  title: BuildTextWidget(
                      text: "Acceptance of Terms",
                      color: Constants.kitGradients[1],
                      fontWeight: FontWeight.bold,
                      size: 17),
                  subtitle: BuildTextWidget(
                      color: Constants.kitGradients[1].withOpacity(0.65),
                      text:
                          "These terms and conditions  govern your use of the CoreAttire mobile application provided by By accessing or using the App, you agree to be bound by these Terms. If you do not agree to these Terms, you may not use the App")),
              ListTile(
                  title: BuildTextWidget(
                      text: "Privacy Policy",
                      color: Constants.kitGradients[1],
                      fontWeight: FontWeight.bold,
                      size: 17),
                  subtitle: BuildTextWidget(
                      color: Constants.kitGradients[1].withOpacity(0.65),
                      text:
                          "Filmy respects the privacy of its users. Our Privacy Policy outlines how we collect, use, and disclose personal information. By using the app, you consent to the collection and use of your information as described in the Privacy Policy.")),
              ListTile(
                title: BuildTextWidget(
                    color: Constants.kitGradients[1],
                    text: "Contact Us",
                    fontWeight: FontWeight.bold,
                    size: 17),
                subtitle: BuildTextWidget(
                    color: Constants.kitGradients[1].withOpacity(0.65),
                    text:
                        "If you have any questions about these Terms, please contact us at filmy@gmail.com"),
              ),
            ],
          ),
        ));
  }
}
