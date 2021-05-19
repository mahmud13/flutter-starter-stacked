import 'package:crowd_sourcing/models/application_models.dart';
import 'package:crowd_sourcing/ui/dumb_widgets/base_layout.dart';
import 'package:crowd_sourcing/ui/shared/ui_helpers.dart';
import 'package:crowd_sourcing/ui/views/report/detail/submission_report_detail_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SubmissionReportDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SubmissiontionDetailArgs;
    final theme = Theme.of(context);
    return ViewModelBuilder<SubmissionReportDetailViewModel>.reactive(
      onModelReady: (model) => model.loadSuggestion(args.id),
      builder: (context, model, child) {
        return BaseLayout(
          appBarTitle: 'Report Detail',
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: !model.isBusy
                ? ListView(children: [
                    Text(
                      model.faktory.name,
                      style: theme.textTheme.headline5,
                    ),
                    Text('Type: ${model.pointField.label}'),
                    verticalSpaceMedium,
                    for (var child in model.suggestion.payload.children)
                      Column(
                        children: [
                          SubmissionChild(child),
                          verticalSpaceRegular,
                        ],
                      ),
                    Row(
                      children: [
                        Expanded(child: Text('Submission Date')),
                        Expanded(
                            child: Text(model.suggestion.submittedAtDisplay)),
                      ],
                    ),
                  ])
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        );
      },
      viewModelBuilder: () => SubmissionReportDetailViewModel(),
    );
  }
}

class SubmissionChild extends ViewModelWidget<SubmissionReportDetailViewModel> {
  final SuggestionPayloadChild child;
  SubmissionChild(this.child);

  @override
  Widget build(BuildContext context, SubmissionReportDetailViewModel model) {
    var value = model.getChildValue(child);
    var field = model.getChildField(child);
    switch (field.type) {
      case PointFieldChildType.boolean:
        return Row(
          children: [
            Expanded(flex: 5, child: Text(field.label)),
            Expanded(flex: 3, child: Text(value.toString())),
            Expanded(flex: 1, child: Text(child.pointsRequested.toString())),
            Expanded(flex: 1, child: Text(child.pointsEarned.toString())),
          ],
        );
      case PointFieldChildType.text:
        return Row(
          children: [
            Expanded(child: Text(field.label)),
            Expanded(child: Text(value)),
          ],
        );
      case PointFieldChildType.image:
        return Row(
          children: [
            Expanded(flex: 5, child: Text('Image')),
            Expanded(
                flex: 3,
                child: Image.network(
                  value,
                  height: 100,
                  alignment: Alignment.centerLeft,
                )),
            Expanded(flex: 1, child: Text(child.pointsRequested.toString())),
            Expanded(flex: 1, child: Text(child.pointsEarned.toString())),
          ],
        );
      case PointFieldChildType.gps:
        var gps = value as GpsField;

        return Column(
          children: [
            Row(
              children: [
                Expanded(flex: 5, child: Text('Longitude')),
                Expanded(
                    flex: 3, child: Text(gps.longitude.toStringAsFixed(4))),
                Expanded(
                    flex: 1, child: Text(child.pointsRequested.toString())),
                Expanded(flex: 1, child: Text(child.pointsEarned.toString())),
              ],
            ),
            verticalSpaceRegular,
            Row(
              children: [
                Expanded(child: Text('Latitude')),
                Expanded(child: Text(gps.latitude.toStringAsFixed(4))),
              ],
            ),
            verticalSpaceRegular,
            Row(
              children: [
                Expanded(child: Text('Distance')),
                Expanded(child: Text(gps.distance.toStringAsFixed(2) + ' m')),
              ],
            ),
          ],
        );
    }
  }
}
