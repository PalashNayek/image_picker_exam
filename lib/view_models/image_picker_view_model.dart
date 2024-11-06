import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerViewModel extends ChangeNotifier {
  final ImagePicker _imagePicker;
  XFile? _selectedImage;

  ImagePickerViewModel(this._imagePicker);

  XFile? get selectedImage => _selectedImage;

  Future<void> selectImageFromGallery() async {
    _selectedImage = await _imagePicker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  Future<void> selectImageFromCamera() async {
    _selectedImage = await _imagePicker.pickImage(source: ImageSource.camera);
    notifyListeners();
  }

  File? get imageFile => _selectedImage != null ? File(_selectedImage!.path) : null;
}
