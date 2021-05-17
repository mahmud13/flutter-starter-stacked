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
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'hi',
                    style: theme.textTheme.headline6,
                  ),
                  verticalSpaceSmall,
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
