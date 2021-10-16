import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wsbdegenerate/bloc/CameraBloc/CameraBlocExport.dart';

import 'service/CameraRepo.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(CameraInitState());
  late XFile _selectFile;

  late String _captureFilePath;

  late String _captureVideoPath;

  @override
  CameraState get initialState => CameraInitState();

  @override
  Stream<CameraState> mapEventToState(CameraEvent event) async* {
    CameraRepo _cameraRepo = new CameraRepo();

    if (event is SelectImageFromGallery) {
      _selectFile = await _cameraRepo.SelectImagefromGallery();
      yield SelectedImageState(file: _selectFile);
    }
  }
}
