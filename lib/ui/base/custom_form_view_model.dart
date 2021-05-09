import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

abstract class CustomFormViewModel extends FormViewModel {
  var _autovalidateMode = AutovalidateMode.disabled;

  AutovalidateMode get autovalidateMode => _autovalidateMode;

  void setAutovalidateModeAlways() {
    _autovalidateMode = AutovalidateMode.always;
    notifyListeners();
  }
}
