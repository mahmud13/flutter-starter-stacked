import 'package:crowd_sourcing/ui/views/suggestions/create/operational/is_open_widget.dart';

import 'operational_widgetmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OperationalWidget extends StatelessWidget {
  final String faktoryId;

  OperationalWidget(this.faktoryId);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OperationalWidgetModel>.reactive(
      builder: (context, model, child) => Expanded(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                currentStep: model.currentStep,
                physics: ScrollPhysics(),
                type: StepperType.horizontal,
                controlsBuilder: (BuildContext context,
                    {VoidCallback? onStepContinue,
                    VoidCallback? onStepCancel}) {
                  return Container();
                },
                onStepContinue: model.stepUp,
                onStepCancel: model.stepDown,
                onStepTapped: (step) => model.setStep(step),
                steps: [
                  Step(
                    title: Text('Open/Close'),
                    content: Center(
                      child: IsOpenWidget(),
                    ),
                    isActive: model.currentStep >= 0,
                    state: model.currentStep == 0
                        ? StepState.editing
                        : StepState.disabled,
                  ),
                  Step(
                    title: Text('Picture'),
                    content: Text('hello'),
                    isActive: model.currentStep >= 1,
                    state: model.currentStep == 1
                        ? StepState.editing
                        : StepState.disabled,
                  ),
                  Step(
                    title: Text('GPS'),
                    content: Text('hello'),
                    isActive: model.currentStep >= 2,
                    state: model.currentStep == 2
                        ? StepState.editing
                        : StepState.disabled,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton.icon(
                      onPressed: model.stepDown,
                      icon: Icon(Icons.arrow_left_sharp),
                      label: Text('Back')),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton.icon(
                      onPressed: model.stepUp,
                      icon: Icon(Icons.arrow_right_sharp),
                      label: Text('Next')),
                ),
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => OperationalWidgetModel(totalSteps: 3),
    );
  }
}
