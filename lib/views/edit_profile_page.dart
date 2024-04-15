import 'dart:io';

import 'package:desk_live/Controllers/edit_profile_controller.dart';
import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/views/home_view.dart';
import 'package:desk_live/widget/build_circle_avatar.dart';
import 'package:desk_live/widget/build_icon_button_widget.dart';
import 'package:desk_live/widget/build_icon_widget.dart';
import 'package:desk_live/widget/build_text_formfiled_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Utils/constants.dart';
import '../widget/build_text_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String? picture;
  XFile? image;

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const SizedBox(),
      ),
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: BuildTextWidget(
                    fontWeight: FontWeight.w600,
                    text: "Edit your profile picture and name",
                    color: Constants.kitGradients[1],
                    size: 27),
              ),
              const SizedBox(
                height: 20,
              ),
              picture != null
                  ? BuildCircleAvatar(
                      radius: 60,
                      image: FileImage(File(picture!)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60, top: 80),
                        child: Stack(
                          children: [
                            BuildIconButtonWidget(
                                icon: Icons.photo_camera,
                                iconSize: 35,
                                iconColor: Constants.kitGradients[19],
                                onPressed: () async {
                                  image =
                                      await EditProfileController().pickImage();
                                  setState(() {
                                    picture = image?.path;
                                  });
                                })
                          ],
                        ),
                      ),
                    )
                  : BuildCircleAvatar(
                      radius: 60,
                      image: const NetworkImage(
                          "https://assets.architecturaldigest.in/photos/63806da6d2c4a1a597b273fd/1:1/w_2896,h_2896,c_limit/1442809583"),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60, top: 80),
                        child: Stack(
                          children: [
                            BuildIconButtonWidget(
                                icon: Icons.photo_camera,
                                iconSize: 35,
                                iconColor: Constants.kitGradients[19],
                                onPressed: () async {
                                  image =
                                      await EditProfileController().pickImage();
                                  setState(() {
                                    picture = image?.path;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: BuildTextWidget(
                      fontWeight: FontWeight.w300,
                      text: "Enter your name",
                      color: Constants.kitGradients[1],
                      size: 12),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BuildTexFormFieldWidget(
                  radius: 5,
                  controller: nameController,
                  hintText: "Enter your name",
                  prefix: BuildIconWidget(
                    iconData: Icons.person_outline,
                    color: Constants.kitGradients[19],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 3.5),
              ),
              InkWell(
                onTap: () {
                  pushAndReplacement(context, const HomeView());
                },
                child: Container(
                  height: 50,
                  width: screenWidth(context, dividedBy: 1.06),
                  decoration: ShapeDecoration(
                    color: Constants.kitGradients[1],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  child: Center(
                    child: BuildTextWidget(
                        text: "Submit",
                        size: 15,
                        color: Constants.kitGradients[0]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
