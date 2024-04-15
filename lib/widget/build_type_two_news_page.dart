import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/views/profile_page.dart';
import 'package:desk_live/widget/build_text_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'build_bottom_bar_widget.dart';
import 'build_icon_button_widget.dart';

class BuildTypeTwoNewsPage extends StatefulWidget {
  const BuildTypeTwoNewsPage({super.key});

  @override
  State<BuildTypeTwoNewsPage> createState() => _BuildTypeTwoNewsPageState();
}

class _BuildTypeTwoNewsPageState extends State<BuildTypeTwoNewsPage> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return SafeArea(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: Constants.kitGradients[1]),
        child: Scaffold(
          body: InkWell(
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Column(
              children: [
                Container(
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
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: BuildTextWidget(
                    text:
                        "വിമാനത്തിന് തകരാർ,ജസ്റ്റിൻ ട്രൂഡോയും സംഘവുംഇന്ന് മടങ്ങില്ല, ഇന്ത്യയിൽ തുടരും",
                    color: Constants.kitGradients[1],
                    fontWeight: FontWeight.w700,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: screenWidth(context),
                    height: screenHeight(context, dividedBy: 2.8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://hbz.h-cdn.co/assets/17/13/1600x800/gallery-1490735945-hbz-trudeau-teen-index2.jpg"),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: BuildTextWidget(
                      text: "inetrnational    . 14 days ago",
                      color: Constants.kitGradients[1],
                      fontWeight: FontWeight.w400,
                      size: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: BuildTextWidget(
                      text:
                          "ന്യൂഡ‍ൽഹി: കാനഡയിൽ നടക്കുന്ന ഇന്ത്യാ വിരുദ്ധ നീക്കങ്ങളിൽ കനേഡിയൻ പ്രധാനമന്ത്രി ജസ്റ്റിൻ ട്രൂഡോയോട് ആശങ്ക അറിയിച്ച് പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി. ജി 20 ഉച്ചകോടിക്കിടെ നടന്ന യോഗത്തിലാണ് ഇരുവരും തമ്മിൽ കൂടിക്കാഴ്ച നടത്തിയത്.പ്രധാനമന്ത്രി നരേന്ദ്രമോദി കനേഡിയൻ പ്രധാനമന്ത്രി ജസ്റ്റിൻ ട്രൂഡോയുമായി ഭീകരവാദം ഉൾപ്പെടെയുളള വിവിധ വിഷയങ്ങൾ ചർച്ച ചെയ്‌തതായി പ്രധാനമന്ത്രിയുടെ ഓഫീസ് തന്നെയാണ് മാധ്യമങ്ങളെ അറിയിച്ചത്. ഇന്ത്യയോടൊപ്പം ചേർന്ന് ഖലിസ്ഥാൻ ഭീകരവാദത്തിനെതിരായി പ്രവർത്തിക്കുമെന്നും",
                      color: Constants.kitGradients[8],
                      fontWeight: FontWeight.w300,
                      size: 14,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    isVisible
                        ? const BuildBottomBarWidget(bottomBarColor: true)
                        : const SizedBox(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
