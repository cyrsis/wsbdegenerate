import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../CameraBlocExport.dart';

class CameraTakePhotoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.camera_alt),
        color: Colors.blue,
        onPressed: () {
          BlocProvider.of<CameraBloc>(context).add(CameraTakePicture());
        });
  }
}
