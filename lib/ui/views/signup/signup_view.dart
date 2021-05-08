import 'package:crowd_sourcing/ui/views/signup/factory_name/factory_name_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../generated/l10n.dart';
import '../../shared/ui_helpers.dart';
import 'personal_info/personal_info_widget.dart';
import 'signup_viewmodel.dart';

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
      viewModelBuilder: () => SignupViewModel(totalSteps: 3),
      builder: (context, model, child) => WillPopScope(
        onWillPop: model.handleBack,
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              children: [
                verticalSpaceMedium,
                Text(
                  S.current.signup,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {
                    model.navigateToLogin();
                  },
                  child: Text(S.current.alreadyHaveAnAccount),
                ),
                Stepper(
                  type: StepperType.vertical,
                  physics: ScrollPhysics(),
                  currentStep: model.currentStep,
                  controlsBuilder: (BuildContext context,
                      {VoidCallback? onStepContinue,
                      VoidCallback? onStepCancel}) {
                    return Container();
                  },
                  steps: <Step>[
                    Step(
                      title: Text(S.current.personalInfo),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: PersonalInfoWidget(
                          onSubmit: model.setPersonalInfo,
                        ),
                      ),
                    ),
                    Step(
                      title: Text(S.current.factory),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: FactoryNameView(
                          onSubmit: (factoryId) {
                            model.stepUp();
                          },
                          stepDown: model.stepDown,
                        ),
                      ),
                    ),
                    // Step(
                    //   title: Text('Profile Picture'),
                    //   content: Container(
                    //     alignment: Alignment.centerLeft,
                    //     child: ProfilePhotoForm(
                    //       onSubmit: (SignUpInput input) {
                    //         print(input);
                    //       },
                    //       input: _input,
                    //       onBack: handleBack,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
