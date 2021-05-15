import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../shared/ui_helpers.dart';
import 'operational_widgetmodel.dart';

class GpsWidget extends HookViewModelWidget<OperationalWidgetModel> {
  @override
  Widget buildViewModelWidget(
      BuildContext context, OperationalWidgetModel model) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Submit your GPS location. (${model.gpsField!.point} points)',
          style: theme.textTheme.headline6,
        ),
        verticalSpaceMedium,
        ElevatedButton.icon(
          onPressed: () => model.getPosition(),
          label: Text('Locate me'),
          icon: Icon(Icons.gps_fixed),
        ),
        if (model.currentPosition != null)
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'Latitude:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(model.currentPosition!.latitude.toString()),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'Longitude:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(model.currentPosition!.longitude.toString()),
                  )
                ],
              ),
              verticalSpaceMedium,
              Text(
                'Distance from the factory',
                style: theme.textTheme.headline6,
              ),
              verticalSpaceTiny,
              Text(
                model.distance,
                style: theme.textTheme.headline5,
              ),
              verticalSpaceMedium,
              Text(
                'The distance must be less than 10m to be eligible for the point',
                style: theme.textTheme.caption,
              )
            ],
          ),
      ],
    );
  }
}
