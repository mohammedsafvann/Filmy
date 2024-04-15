import 'package:image_picker/image_picker.dart';

class EditProfileController {
  XFile? image;
  Future<XFile?> pickImage() async {
    try {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);

      print("images......................");
      print(image);
      return image;
    } catch (e) {
      print("errorr");
    }
  }
}
