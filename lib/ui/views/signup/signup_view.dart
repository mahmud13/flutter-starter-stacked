import 'dart:io';

import 'package:crowd_sourcing/models/application_models.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../generated/l10n.dart';
import '../../shared/ui_helpers.dart';
import 'factory_name/factory_name_view.dart';
import 'personal_info/personal_info_widget.dart';
import 'profile_photo/phofile_photo_widget.dart';
import 'signup_viewmodel.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);
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
                          onSubmit: (Map<String, dynamic> info) {
                            model.setPersonalInfo(info);
                            model.stepUp();
                          },
                        ),
                      ),
                    ),
                    Step(
                      title: Text(S.current.factory),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: FactoryNameView(
                          key: key,
                          onSubmit: (List<UserFaktory> faktories) {
                            model.setFaktories(faktories);
                            model.stepUp();
                          },
                          onBack: model.stepDown,
                        ),
                      ),
                    ),
                    Step(
                      title: Text(S.current.profilePicture),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: ProfilePhotoWidget(
                          onSubmit: (File image) {
                            model.handlePhotoSubmit(image);
                          },
                          onBack: model.stepDown,
                        ),
                      ),
                    ),
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
