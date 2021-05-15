import 'package:stacked/stacked.dart';

mixin StepperViewModel on BaseViewModel {
  var totalSteps;
  var _currentStep = 0;
  int get currentStep => _currentStep;
  bool get canGoBack => _currentStep > 0;
  bool get canGoForward => _currentStep < totalSteps - 1;

  void stepUp() {
    if (canGoForward) {
      setStep(_currentStep + 1);
    } else {
      throw NoStepFoundException('There is no such step above $totalSteps');
    }
  }

  void stepDown() {
    if (canGoBack) {
      setStep(_currentStep - 1);
    } else {
      throw NoStepFoundException('There is no such step below 1');
    }
  }

  void setStep(int step) {
    _currentStep = step;
    notifyListeners();
  }
}

class NoStepFoundException implements Exception {
  final String _message;

  String get message => _message;

  NoStepFoundException(this._message);
}
