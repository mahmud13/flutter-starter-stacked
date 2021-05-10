import 'dart:io';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../models/application_models.dart';
import '../../../../services/user_service.dart';

class SuggestionCreateViewModel extends BaseViewModel {
  final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();
  var _currentStep = 0;
  var totalSteps;

  SuggestionCreateViewModel({required this.totalSteps});

  int get currentStep => _currentStep;
  void stepUp() {
    if (_currentStep < totalSteps) {
      setStep(_currentStep + 1);
    }
  }

  void stepDown() {
    if (_currentStep > 0) {
      setStep(_currentStep - 1);
    }
  }

  User get currentUser {
    return _userService.currentUser!;
  }

  void setStep(int step) {
    _currentStep = step;
    notifyListeners();
  }
}
