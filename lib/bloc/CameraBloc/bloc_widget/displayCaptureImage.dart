import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../CameraBlocExport.dart';

class displayCaptureImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BlocBuilder(
        bloc: BlocProvider.of<CameraBloc>(context),
        builder: (context, state) {
          if (state is CapturedImageState) {
            return new SizedBox(
              height: 200.0,
              width: 300.0,
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
              child: state.filepath == null
                  ? Container(
                      width: 0.0,
                      height: 0.0,
                    )
                  : new Image.file(File(state.filepath)),
            );
          }
          return Container(
            width: 0.0,
            height: 0.0,
          );
        });
    ;
  }
}
