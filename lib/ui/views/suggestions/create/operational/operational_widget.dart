import 'package:crowd_sourcing/ui/views/suggestions/create/operational/gate_picture_widget.dart';
import 'package:crowd_sourcing/ui/views/suggestions/create/operational/gps_widget.dart';
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
      onModelReady: (model) => model.handleModelReady(faktoryId),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () async {
          model.handlePrevious();
          return false;
        },
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: model.operationalField != null
                    ? Stepper(
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
                            content: IsOpenWidget(),
                            isActive: model.currentStep >= 0,
                            state: model.currentStep == 0
                                ? StepState.editing
                                : StepState.disabled,
                          ),
                          Step(
                            title: Text('Picture'),
                            content: GatePictureWidget(),
                            isActive: model.currentStep >= 1,
                            state: model.currentStep == 1
                                ? StepState.editing
                                : StepState.disabled,
                          ),
                          Step(
                            title: Text('GPS'),
                            content: GpsWidget(),
                            isActive: model.currentStep >= 2,
                            state: model.currentStep == 2
                                ? StepState.editing
                                : StepState.disabled,
                          )
                        ],
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton(
                      onPressed: model.canGoBack ? model.handlePrevious : null,
                      child: Row(
                        children: [
                          Icon(Icons.arrow_left_sharp),
                          Text('Back'),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        onPressed: model.handleNext,
                        child: Row(
                          children: [
                            Text(model.canGoForward ? 'Next' : 'Submit'),
                            if (model.canGoForward)
                              Icon(Icons.arrow_right_sharp),
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => OperationalWidgetModel(totalSteps: 3),
    );
  }
}
