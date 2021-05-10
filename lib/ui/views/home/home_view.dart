import 'package:crowd_sourcing/generated/l10n.dart';
import 'package:crowd_sourcing/ui/dumb_widgets/base_layout.dart';
import 'package:crowd_sourcing/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';

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
                  Text(
                    model.currentUser.designation ?? '',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    model.currentUser.faktory!.name,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  verticalSpaceLarge,
                  Text(
                    'Earned Points: ' + 250.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: theme.primaryColorDark,
                    ),
                  ),
                  Text(
                    'Points under review: ' + 150.toString(),
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
