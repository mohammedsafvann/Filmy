import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/views/about_filmy_page.dart';
import 'package:desk_live/views/edit_profile_page.dart';
import 'package:desk_live/views/home_view.dart';
import 'package:desk_live/views/privacy_policy_page.dart';
import 'package:desk_live/views/terms_and_conditions.dart';
import 'package:desk_live/widget/build_icon_and_text_widget.dart';
import 'package:desk_live/widget/build_text_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import '../widget/build_icon_button_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Constants.kitGradients[19],
        title: BuildTextWidget(
            fontWeight: FontWeight.w500,
            text: "News",
            color: Constants.kitGradients[0],
            size: 20),
        leading: BuildIconButtonWidget(
          icon: Icons.arrow_back_ios_new_outlined,
          iconSize: 25,
          iconColor: Constants.kitGradients[0],
          onPressed: () {
            push(context, const HomeView());
          },
        ),
      ),
      body: SizedBox(
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: BuildTextWidget(
                  fontWeight: FontWeight.w500,
                  text: "Settings",
                  color: Constants.kitGradients[1],
                  size: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            BuildIconAndTextWidget(
                onTap: () {
                  push(context, const EditProfilePage());
                },
                icon: Icons.edit_outlined,
                iconName: "Edit Profile"),
            const SizedBox(
              height: 10,
            ),
            BuildIconAndTextWidget(
                onTap: () {
                  push(context, const AboutFilmyPage());
                },
                icon: Icons.info_outline_rounded,
                iconName: "About us"),
            const SizedBox(
              height: 10,
            ),
            BuildIconAndTextWidget(
                onTap: () {
                  push(context, const TermsAndConditions());
                },
                icon: Icons.description,
                iconName: "Terms and Conditions "),
            const SizedBox(
              height: 10,
            ),
            BuildIconAndTextWidget(
                onTap: () {
                  push(context, const PrivacyPolicyPage());
                },
                icon: Icons.lock_outline,
                iconName: "Privacy Policy"),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            BuildIconAndTextWidget(
                onTap: () {
                  removeItemAlert(context,
                      contentMsg:
                          "are you sure you want to delete your account?",
                      titleMsg: "Delete Account",
                      msgCancel: "cancel",
                      msgOk: "Delete", onPressedCancel: () {
                    pop(context, "");
                  }, onPressedOK: () {});
                },
                icon: Icons.delete_outline,
                iconName: "Delete Account "),
          ],
        ),
      ),
    );
  }
}
