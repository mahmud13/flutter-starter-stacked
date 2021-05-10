import 'package:crowd_sourcing/generated/l10n.dart';
import 'package:crowd_sourcing/ui/dumb_widgets/base_layout.dart';
import 'package:crowd_sourcing/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'suggestion_create_viewmodel.dart';

class SuggestionCreateView extends StatelessWidget {
  const SuggestionCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = S.of(context);
    return ViewModelBuilder<SuggestionCreateViewModel>.reactive(
      builder: (context, model, child) => BaseLayout(
        appBarTitle: l.newSuggestion,
        body: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  model.currentUser.faktory!.name,
                  style: theme.textTheme.headline6,
                ),
                verticalSpaceSmall,
                Expanded(
                  child: Stepper(
                    currentStep: model.currentStep,
                    physics: ScrollPhysics(),
                    type: StepperType.horizontal,
                    onStepContinue: model.stepUp,
                    onStepCancel: model.stepDown,
                    onStepTapped: (step) => model.setStep(step),
                    steps: [
                      Step(
                        title: Text('Open/Close'),
                        content: Text('hello'),
                        isActive: model.currentStep >= 0,
                        state: model.currentStep == 0
                            ? StepState.editing
                            : StepState.complete,
                      ),
                      Step(
                        title: Text('Picture'),
                        content: Text('hello'),
                        isActive: model.currentStep >= 1,
                        state: model.currentStep == 1
                            ? StepState.editing
                            : StepState.complete,
                      ),
                      Step(
                        title: Text('GPS'),
                        content: Text('hello'),
                        isActive: model.currentStep >= 2,
                        state: model.currentStep == 2
                            ? StepState.editing
                            : StepState.complete,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SuggestionCreateViewModel(totalSteps: 3),
    );
  }
}
