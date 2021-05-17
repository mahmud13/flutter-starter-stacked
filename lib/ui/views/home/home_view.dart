import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';

import '../../../generated/l10n.dart';
import '../../dumb_widgets/base_layout.dart';
import '../../shared/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final s = S.of(context);
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => WillPopScope(
        onWillPop: model.handleBack,
        child: BaseLayout(
          appBarTitle: s.home,
          showDrawer: true,
          body: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(s.welcome),
                  Text(
                    model.currentUser.name ?? 'Anonymous',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  for (var faktory in model.currentUser.faktories)
                    Column(
                      children: [
                        Text(
                          faktory.designation ?? '',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          faktory.name,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceLarge,
                  Text(
                    'Earned Points: ' +
                        model.currentUser.totalPointsEarned.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: theme.primaryColorDark,
                    ),
                  ),
                  Text(
                    'Points requested: ' +
                        model.currentUser.totalPointsRequested.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: theme.primaryColorDark,
                    ),
                  ),
                  verticalSpaceSmall,
                  Text('Do you want to earn more points?',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Container(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        OutlinedButton.icon(
                          label: Text(s.suggestAnEdit),
                          onPressed: () => model.navigateToSuggestionMenu(),
                          icon: Icon(Icons.edit),
                        ),
                        OutlinedButton.icon(
                          label: Text(s.viewSubmissionReport),
                          onPressed: () => model.navigateToViewSubmissions(),
                          icon: Icon(Icons.visibility),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
