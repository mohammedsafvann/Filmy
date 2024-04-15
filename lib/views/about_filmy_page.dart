import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/widget/build_text_widget.dart';
import 'package:flutter/material.dart';

import '../widget/build_icon_button_widget.dart';

class AboutFilmyPage extends StatelessWidget {
  const AboutFilmyPage({super.key});

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
            text: "About Filmy",
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
                      "Filmy we're passionate about cinema in all its forms. Whether you're a die-hard fan of classic Hollywood, an aficionado of independent cinema, or someone who simply loves to stay up-to-date with the latest blockbusters, we've got you covered")),
          ListTile(
            title: BuildTextWidget(
                text: "Your Trusted Source for Film Content",
                color: Constants.kitGradients[1],
                fontWeight: FontWeight.bold,
                size: 16),
            subtitle: BuildTextWidget(
                color: Constants.kitGradients[1].withOpacity(0.65),
                text:
                    "Our dedicated team of writers and editors works tirelessly to bring you the latest news, reviews, interviews, and insights from the film industry. Whether you're a fan of Hollywood classics, indie gems, or international cinema, Filmy is your go-to source for all things film-related."),
          ),
          ListTile(
            title: BuildTextWidget(
                text: "Join the Filmy Community",
                color: Constants.kitGradients[1],
                fontWeight: FontWeight.bold,
                size: 16),
            subtitle: BuildTextWidget(
                color: Constants.kitGradients[1].withOpacity(0.65),
                text:
                    "More than just a news app, Filmy is a community of like-minded cinephiles who share your love for the silver screen. Connect with fellow film enthusiasts, engage in lively discussions, and discover hidden cinematic treasures together."),
          ),
        ]),
      ),
    );
  }
}
