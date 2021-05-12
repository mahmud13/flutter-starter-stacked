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
      children: [
        Text(
          'Is the factory Operating?',
          style: theme.textTheme.headline5,
        ),
        verticalSpaceLarge,
        model.isOpen == null || !model.isOpen!
            ? OutlinedButton(
                onPressed: () {
                  model.isOpen = true;
                },
                child: Text('Yes, Open'))
            : ElevatedButton(onPressed: () => true, child: Text('Yes, Open')),
        model.isOpen == null || model.isOpen!
            ? OutlinedButton(
                onPressed: () {
                  model.isOpen = false;
                },
                child: Text('No, Close'))
            : ElevatedButton(onPressed: () => true, child: Text('No, Close')),
      ],
    );
  }
}
