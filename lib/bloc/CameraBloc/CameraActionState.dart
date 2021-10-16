import 'dart:io';

import 'package:image_picker/image_picker.dart';

abstract class CameraEvent {}

class CameraInit extends CameraEvent {}

class CameraTakePicture extends CameraEvent {}

class CameraStartVideo extends CameraEvent {}

class CameraStopVideo extends CameraEvent {}

class SelectImageFromGallery extends CameraEvent {}

class SelectImageFromCamera extends CameraEvent {}

//State
abstract class CameraState {}

class CameraInitState extends CameraState {}

class CameraLoadingState extends CameraState {}

class ShowGridState extends CameraState {}



class CameraStopVideoRecordingState extends CameraState {}

class CapturedImageState extends CameraState {
  final String filepath;

  CapturedImageState(this.filepath);
}



class SelectImageFromGalleryState extends CameraState {}

class SelectImageFromCameraState extends CameraState {}

class SelectedImageState extends CameraState {
  XFile file;

  SelectedImageState({required this.file});
}
