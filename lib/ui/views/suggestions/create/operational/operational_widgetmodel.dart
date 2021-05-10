import 'package:stacked/stacked.dart';

class OperationalWidgetModel extends BaseViewModel {
  var _currentStep = 0;
  var totalSteps;

  OperationalWidgetModel({required this.totalSteps});

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

  void setStep(int step) {
    _currentStep = step;
    notifyListeners();
  }
}
