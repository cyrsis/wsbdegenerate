import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../CameraBlocExport.dart';

class SelectImageFromGalleryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: new Text('Select Image from Gallery'),
      onPressed: () {
        BlocProvider.of<CameraBloc>(context).add(SelectImageFromGallery());
      },
    );
  }
}
