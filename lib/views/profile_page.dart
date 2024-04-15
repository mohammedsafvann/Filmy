import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/views/book_mark_page.dart';
import 'package:desk_live/views/settings_page.dart';
import 'package:desk_live/widget/build_text_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 30,
              height: 5,
              decoration: ShapeDecoration(
                color: Constants.kitGradients[17],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SizedBox(
                width: screenWidth(context),
                height: screenHeight(context, dividedBy: 8),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://www.investopedia.com/thmb/ckPwC5ARwco1nOSCKVGE57se8MI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1245748917-99e3329a7b8147e8ab648806220ce153.jpg"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    BuildTextWidget(
                        text: "SAFVAN.N",
                        size: 20,
                        color: Constants.kitGradients[1],
                        fontWeight: FontWeight.w500),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                color: Constants.kitGradients[1],
                width: screenWidth(context) / 1.2,
                height: 1,
              ),
            ),
            ListTile(
              onTap: () {
                push(
                  context,
                  const BookMarkPage(),
                );
              },
              title: BuildTextWidget(
                  text: "BookMark",
                  size: 15,
                  color: Constants.kitGradients[1],
                  fontWeight: FontWeight.w500),
              leading: Icon(Icons.bookmark_outline,
                  color: Constants.kitGradients[1], size: 25),
            ),
            ListTile(
              title: BuildTextWidget(
                  text: "Settings",
                  size: 15,
                  color: Constants.kitGradients[1],
                  fontWeight: FontWeight.w500),
              leading: Icon(Icons.settings_outlined,
                  color: Constants.kitGradients[1], size: 25),
              onTap: () {
                push(context, const SettingsPage());
              },
            ),
            ListTile(
              title: BuildTextWidget(
                  text: "Give feedback",
                  size: 15,
                  color: Constants.kitGradients[1],
                  fontWeight: FontWeight.w500),
              leading: Icon(Icons.help_outline,
                  color: Constants.kitGradients[1], size: 25),
            ),
            ListTile(
              title: BuildTextWidget(
                  text: "Logout",
                  size: 15,
                  color: Constants.kitGradients[1],
                  fontWeight: FontWeight.w500),
              leading: Icon(Icons.logout_outlined,
                  color: Constants.kitGradients[1], size: 25),
            )
          ],
        ),
      ),
    );
  }
}
