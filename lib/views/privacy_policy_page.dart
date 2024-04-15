import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import '../Utils/utils.dart';
import '../widget/build_icon_button_widget.dart';
import '../widget/build_text_widget.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: BuildIconButtonWidget(
              icon: Icons.arrow_back_ios_new_outlined,
              iconSize: 20,
              iconColor: Constants.kitGradients[0],
              onPressed: () {
                pop(context, "");
              }),
          title: BuildTextWidget(
            text: "Privacy Policy",
            color: Constants.kitGradients[0],
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Constants.kitGradients[19]),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
              title: BuildTextWidget(
                  text: "",
                  color: Constants.kitGradients[1],
                  fontWeight: FontWeight.bold,
                  size: 16),
              subtitle: BuildTextWidget(
                  color: Constants.kitGradients[1].withOpacity(0.65),
                  text:
                      "Filmy may collect personal information, such as name, email address, and location, when users register an account, subscribe to newsletters, or engage in other activities within the app.This information is used to personalize user experience, send relevant content, and improve app functionality.")),
          ListTile(
            title: BuildTextWidget(
                text: "Data Security",
                color: Constants.kitGradients[1],
                fontWeight: FontWeight.bold,
                size: 16),
            subtitle: BuildTextWidget(
                color: Constants.kitGradients[1].withOpacity(0.65),
                text:
                    "Filmy employs industry-standard security measures to protect user information from internet or electronic storage is 100% secure, and Filmy cannot  things film-related."),
          ),
          ListTile(
            title: BuildTextWidget(
                text: "Information Sharing",
                color: Constants.kitGradients[1],
                fontWeight: FontWeight.bold,
                size: 16),
            subtitle: BuildTextWidget(
                color: Constants.kitGradients[1].withOpacity(0.65),
                text:
                    "User information may be shared with trusted third-party service providers who assist in app operation, maintenance, or improvement, provided they agree to keep the information confidential."),
          ),
          ListTile(
            title: BuildTextWidget(
                text: " Contact Information",
                color: Constants.kitGradients[1],
                fontWeight: FontWeight.bold,
                size: 16),
            subtitle: BuildTextWidget(
                color: Constants.kitGradients[1].withOpacity(0.65),
                text:
                    "If you have any questions or concerns about this privacy policy, please contact us at filmy@gmail.com."),
          ),
        ]),
      ),
    );
  }
}
