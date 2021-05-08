import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class ProfilePhotoWidgetModel extends BaseViewModel {
  File? _file;

  final _picker = ImagePicker();

  File? get file => _file;
  Image? get image => _file == null ? null : Image.file(_file!);

  Future setImage() async {
    var pickedFile = await _picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      _file = File(pickedFile.path);
      notifyListeners();
    }
  }
}
