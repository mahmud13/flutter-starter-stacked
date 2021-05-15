import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../shared/ui_helpers.dart';
import 'operational_widgetmodel.dart';

class IsOpenWidget extends HookViewModelWidget<OperationalWidgetModel> {
  @override
  Widget buildViewModelWidget(
      BuildContext context, OperationalWidgetModel model) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Is the factory Operating? (${model.isOpenField!.point} points)',
          style: theme.textTheme.headline6,
        ),
        verticalSpaceMedium,
        Row(
          children: [
            Radio(
              value: true,
              groupValue: model.isOpen,
              onChanged: (bool? value) {
                model.isOpen = value;
              },
            ),
            GestureDetector(
              onTap: () {
                model.isOpen = true;
              },
              child: Text(
                'Yes',
                style: theme.textTheme.headline6,
              ),
            )
          ],
        ),
        Row(
          children: [
            Radio(
              value: false,
              groupValue: model.isOpen,
              onChanged: (bool? value) {
                model.isOpen = value;
              },
            ),
            GestureDetector(
              onTap: () {
                model.isOpen = false;
              },
              child: Text(
                'No',
                style: theme.textTheme.headline6,
              ),
            )
          ],
        ),
      ],
    );
  }
}
