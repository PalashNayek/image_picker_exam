import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

import '../view_models/image_picker_view_model.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  // Register ImagePicker
  getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());

  // Register ViewModel with dependency injection
  getIt.registerFactory<ImagePickerViewModel>(() => ImagePickerViewModel(getIt<ImagePicker>()));
}
