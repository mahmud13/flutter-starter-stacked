import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../dumb_widgets/base_layout.dart';
import '../../shared/ui_helpers.dart';
import '../../../generated/l10n.dart';
import 'submission_report_viewmodel.dart';

class SubmissionReportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = S.of(context);
    return ViewModelBuilder<SubmissionReportViewModel>.reactive(
      onModelReady: (model) => model.loadReport(),
      builder: (context, model, child) {
        return BaseLayout(
          appBarTitle: 'Report',
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    'Table',
                    style: theme.textTheme.headline6,
                  ),
                  verticalSpaceSmall,
                  Table(
                    children: [
                      TableRow(children: [
                        Text('Field'),
                        Text('Points Requested'),
                        Text('Points earned')
                      ]),
                      for (var submission in model.submissions)
                        TableRow(children: [
                          Text(submission.payload.field),
                          Text(submission.payload.totalPointsRequested
                              .toString()),
                          Text(submission.payload.totalPointsEarned.toString()),
                        ]),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => SubmissionReportViewModel(),
    );
  }
}
