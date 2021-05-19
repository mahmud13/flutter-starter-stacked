import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../dumb_widgets/base_layout.dart';
import 'submission_report_row_widget.dart';
import 'submission_report_viewmodel.dart';

class SubmissionReportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ViewModelBuilder<SubmissionReportViewModel>.reactive(
      onModelReady: (model) => model.loadReport(),
      builder: (context, model, child) {
        return BaseLayout(
          appBarTitle: 'Report',
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: ListView(
              children: [
                for (var faktory in model.currentUser.faktories)
                  Column(
                    children: <Widget>[
                      Text(
                        faktory.name,
                        style: theme.textTheme.headline5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 110.0,
                              child: Center(
                                child: Text('Submission Date'),
                              ),
                            ),
                            Container(
                              width: 110.0,
                              child: Center(
                                child: Text('Points'),
                              ),
                            ),
                            Container(
                              width: 120.0,
                              child: Text(
                                'Status',
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                      for (var submission in model.submissions
                          .where((element) => element.faktoryId == faktory.id))
                        SubmissionReportRowWidget(submission)
                    ],
                  ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => SubmissionReportViewModel(),
    );
  }
}
