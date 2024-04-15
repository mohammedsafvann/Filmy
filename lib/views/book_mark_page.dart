import 'package:desk_live/Utils/constants.dart';
import 'package:desk_live/widget/build_text_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/utils.dart';
import '../widget/build_book_mark_widget.dart';
import '../widget/build_icon_button_widget.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BuildTextWidget(
          text: "Filmy",
          fontWeight: FontWeight.w600,
          color: Constants.kitGradients[0],
          size: 28,
        ),
        backgroundColor: Constants.kitGradients[19],
        leading: BuildIconButtonWidget(
            icon: Icons.arrow_back_ios_new_outlined,
            iconSize: 20,
            iconColor: Constants.kitGradients[0],
            onPressed: () {
              pop(context, "");
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: BuildIconButtonWidget(
                icon: Icons.refresh,
                iconSize: 25,
                iconColor: Constants.kitGradients[0],
                onPressed: () {}),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: FractionalOffset.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20),
                child: BuildTextWidget(
                  text: "Book Marks",
                  fontWeight: FontWeight.w400,
                  color: Constants.kitGradients[1].withOpacity(.6),
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth(context, dividedBy: 1.1),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return const BuildBookMarkWidget();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
