import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../../../generated/l10n.dart';
import '../../../../models/application_models.dart';
import 'submission_report_viewmodel.dart';

class SubmissionReportRowWidget
    extends ViewModelWidget<SubmissionReportViewModel> {
  final Suggestion submission;
  SubmissionReportRowWidget(this.submission);

  @override
  Widget build(BuildContext context, SubmissionReportViewModel model) {
    var l = S.of(context);
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: _getRowColor(submission.status),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 110.0,
            child: Text(
              submission.submittedAtDisplay,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            width: 110.0,
            child: Column(
              children: [
                Center(
                  child: Text(
                    NumberFormat.compact()
                        .format(submission.payload.totalPointsRequested),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    model.navigateToDetail(submission.id!);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(10.0),
                  ),
                  child: Text(
                    l.details,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 120.0,
            child: Text(
              submission.statusDisplay,
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Color _getRowColor(SuggestionStatus status) {
    switch (status) {
      case SuggestionStatus.submitted:
        return Colors.white;
      case SuggestionStatus.approved:
        return Colors.green;
      case SuggestionStatus.rejected:
        return Colors.red;
    }
  }
}
