import 'package:crowd_sourcing/ui/views/suggestions/create/operational/operational_widget.dart';

import '../../../../generated/l10n.dart';
import '../../../dumb_widgets/base_layout.dart';
import '../../../shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'brands/brands_widget.dart';
import 'suggestion_create_viewmodel.dart';

class SuggestionCreateView extends StatelessWidget {
  const SuggestionCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = S.of(context);
    final args =
        ModalRoute.of(context)!.settings.arguments as SuggestionCreateArgs;

    return ViewModelBuilder<SuggestionCreateViewModel>.reactive(
      builder: (context, model, child) => BaseLayout(
        appBarTitle: l.newSuggestion,
        body: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  model.faktory!.name,
                  style: theme.textTheme.headline6,
                ),
                verticalSpaceSmall,
                if (args.field == 'operational')
                  OperationalWidget(args.faktoryId)
                else if (args.field == 'brands')
                  BrandsWidget(args.faktoryId)
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SuggestionCreateViewModel(totalSteps: 3),
    );
  }
}
