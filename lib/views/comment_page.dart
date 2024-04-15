import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/widget/build_comment_box_widget.dart';
import 'package:desk_live/widget/build_text_formfiled_widget.dart';
import 'package:desk_live/widget/build_text_widget.dart';
import 'package:flutter/material.dart';
import '../Utils/constants.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: screenWidth(context, dividedBy: 10),
                height: 5,
                decoration: ShapeDecoration(
                  color: Constants.kitGradients[15].withOpacity(.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  // remove shrinkWrap
                  shrinkWrap: true,

                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return BuildCommentBoxWidget(
                      onTap: () {},
                    );
                  },
                ),
              ),
              SizedBox(
                width: screenWidth(context),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: SizedBox(
                          height: 50,
                          width: screenWidth(context, dividedBy: 1.28),
                          child: BuildTexFormFieldWidget(
                              controller: commentController,
                              hintText: "comments",
                              radius: 10),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: screenWidth(context, dividedBy: 5.5),
                        decoration: BoxDecoration(
                          color: Constants.kitGradients[15].withOpacity(.6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // height: 48,
                        height: screenHeight(context, dividedBy: 13.4),
                        child: Center(
                          child: BuildTextWidget(
                              text: "Post", color: Constants.kitGradients[0]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
