import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker_exam/view_models/image_picker_view_model.dart';
import 'package:provider/provider.dart';

import 'di/service_locator.dart';

class ImagePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<ImagePickerViewModel>(),
      child: Scaffold(
        appBar: AppBar(title: Text('Image Picker')),
        body: ImagePickerView(),
      ),
    );
  }
}

class ImagePickerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ImagePickerViewModel>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (viewModel.imageFile != null)
            Image.file(
              viewModel.imageFile!,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            )
          else
            Text('No image selected.'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await viewModel.selectImageFromGallery();
            },
            child: Text('Pick Image from Gallery'),
          ),
          ElevatedButton(
            onPressed: () async {
              await viewModel.selectImageFromCamera();
            },
            child: Text('Pick Image from Camera'),
          ),
        ],
      ),
    );
  }
}
