import 'package:flutter/material.dart';
import 'package:image_picker_exam/screens.dart';

import 'di/service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImagePickerPage(),
    );
  }
}
