import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../CameraBlocExport.dart';

class displaySelectedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BlocBuilder(
        bloc: BlocProvider.of<CameraBloc>(context),
        builder: (context, state) {
          if (state is SelectedImageState) {
            return new SizedBox(
              height: 200.0,
              width: 300.0,
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
              child: state.file == null
                  ? new Text('Sorry nothing selected!!')
                  : new Image.file(File(state.file.path)),
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
