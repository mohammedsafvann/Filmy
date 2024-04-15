import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import '../Utils/utils.dart';
import '../views/profile_page.dart';
import 'build_bottom_bar_widget.dart';
import 'build_icon_button_widget.dart';
import 'build_text_widget.dart';

class BuildTypeOneNewsPage extends StatefulWidget {
  const BuildTypeOneNewsPage({super.key});

  @override
  State<BuildTypeOneNewsPage> createState() => _BuildTypeOneNewsPageState();
}

class _BuildTypeOneNewsPageState extends State<BuildTypeOneNewsPage> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("asset/images/in-kerala rain 1.png"),
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  isVisible
                      ? Container(
                          width: screenWidth(context),
                          height: screenHeight(context, dividedBy: 9),
                          color: Constants.kitGradients[19],
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BuildIconButtonWidget(
                                    icon: Icons.sort,
                                    iconSize: 25,
                                    iconColor: Constants.kitGradients[0],
                                    onPressed: () {
                                      showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                        context: context,
                                        builder: (context) {
                                          return const ProfilePage();
                                        },
                                      );
                                    }),
                                BuildTextWidget(
                                    fontWeight: FontWeight.w500,
                                    text: "News",
                                    color: Constants.kitGradients[0],
                                    size: 20),
                                BuildIconButtonWidget(
                                    icon: Icons.refresh,
                                    iconSize: 25,
                                    iconColor: Constants.kitGradients[0],
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        )
                      : SizedBox(
                          width: screenWidth(context),
                          height: screenHeight(context, dividedBy: 9)),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      child: BuildTextWidget(
                        text:
                            "കേരളത്തിൽ 2 ജില്ലകളിൽയെല്ലോ അലർട്ട് പ്രഖ്യാപിച്ചു...",
                        color: Constants.kitGradients[0],
                        fontWeight: FontWeight.w700,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: BuildTextWidget(
                      maximumLine: 10,
                      text:
                          "സംസ്ഥാനത്ത് ഒരു ഇടവേളയ്ക്ക് ശേഷം വീണ്ടുംമഴ ശക്തമാകുന്നു. ഇന്ന് ഒൻപത് ജില്ലകളിലാണ് മഴമുന്നറിയിപ്പ് പ്രഖ്യാപിച്ചിരിക്കുന്നത്. അടുത്ത അഞ്ചു ദിവസം വ്യാപകമായ മഴക്കും ഒറ്റപ്പെട്ട സ്ഥലങ്ങളിൽ ശക്തമായ മഴക്കും (Heavy Rainfall) സാധ്യതയെന്ന് കേന്ദ്ര കാലാവസ്ഥ വകുപ്പ്.",
                      color: Colors.grey[300],
                      fontWeight: FontWeight.w700,
                      size: 18,
                    ),
                  ),
                  const Spacer(),
                  isVisible
                      ? const Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: BuildBottomBarWidget(bottomBarColor: false),
                        )
                      : const SizedBox()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
