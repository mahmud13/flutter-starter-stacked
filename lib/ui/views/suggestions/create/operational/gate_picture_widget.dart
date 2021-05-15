import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../shared/ui_helpers.dart';
import 'operational_widgetmodel.dart';

class GatePictureWidget extends HookViewModelWidget<OperationalWidgetModel> {
  @override
  Widget buildViewModelWidget(
      BuildContext context, OperationalWidgetModel model) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Take a picture of the gate. (${model.gatePictureField!.point} points)',
          style: theme.textTheme.headline6,
        ),
        verticalSpaceMedium,
        Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              height: 200.0,
              child: model.gatePicuture,
            ),
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            iconSize: 40,
            onPressed: model.setImage,
          ),
        ]),
      ],
    );
  }
}
