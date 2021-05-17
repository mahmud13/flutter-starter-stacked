import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'brands_widgetmodel.dart';

class BrandsWidget extends StatelessWidget {
  final String faktoryId;

  BrandsWidget(this.faktoryId);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BrandsWidgetModel>.reactive(
      builder: (context, model, child) => Expanded(
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
              content: Text("Let's change brand"),
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
      ),
      viewModelBuilder: () => BrandsWidgetModel(totalSteps: 3),
    );
  }
}
