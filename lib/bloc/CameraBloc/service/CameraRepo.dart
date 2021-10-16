import 'dart:io';


import 'package:image_picker/image_picker.dart';

import './ImagePickerProvider.dart';

class CameraRepo {
  ImagePickerProvider _imagePickerProvider = new ImagePickerProvider();

  Future<XFile> SelectImagefromGallery() =>
      _imagePickerProvider.pickImageFromGallery();


}
