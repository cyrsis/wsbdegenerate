import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider {
  Future<XFile> pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    XFile? galleryFile = await _picker.pickImage(
      source: ImageSource.gallery,
      // maxHeight: 50.0,
      // maxWidth: 50.0,
    );
    print("You selected gallery image : " + galleryFile!.path);

    return galleryFile;
  }






}
