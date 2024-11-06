import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _imagePicker;

  ImagePickerService(this._imagePicker);

  Future<XFile?> pickImageFromGallery() async {
    return await _imagePicker.pickImage(source: ImageSource.gallery);
  }

  Future<XFile?> pickImageFromCamera() async {
    return await _imagePicker.pickImage(source: ImageSource.camera);
  }
}
