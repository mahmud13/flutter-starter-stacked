import '../../../../ui/base/custom_form_view_model.dart';
import 'personal_info_widget.form.dart';

class PersonalInfoWidgetModel extends CustomFormViewModel {
  var isPasswordVisible = false;

  @override
  void setFormStatus() {}

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  PersonalInfo getPersonalInfo(Function onSubmit) => onSubmit(PersonalInfo(
        name: nameValue!,
        email: emailValue!,
        designation: designationValue!,
        phone: phoneValue!,
      ));
}

class PersonalInfo {
  String name;
  String email;
  String designation;
  String phone;

  PersonalInfo({
    required this.name,
    required this.email,
    required this.designation,
    required this.phone,
  });
}
