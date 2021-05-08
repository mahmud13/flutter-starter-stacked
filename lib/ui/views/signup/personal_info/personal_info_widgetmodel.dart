import '../../../../ui/base/custom_form_view_model.dart';

class PersonalInfoWidgetModel extends CustomFormViewModel {
  var isPasswordVisible = false;

  @override
  void setFormStatus() {}

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}
