import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../generated/l10n.dart';
import '../../../dumb_widgets/base_layout.dart';
import '../../../shared/ui_helpers.dart';
import 'suggestion_menu_viewmodel.dart';

class SuggestionMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return ViewModelBuilder<SuggestionMenuViewModel>.reactive(
      builder: (context, model, child) {
        return BaseLayout(
          appBarTitle: s.fieldSelection,
          body: model.pointTable != null
              ? model.pointTable!.isNotEmpty
                  ? Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Please, select a factory'),
                          for (var faktory in model.currentUser.faktories)
                            model.selectedFaktory == faktory
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () =>
                                            model.setFaktory(faktory),
                                        child: Text(faktory.name),
                                      ),
                                    ],
                                  )
                                : Center(
                                    child: OutlinedButton(
                                      onPressed: () =>
                                          model.setFaktory(faktory),
                                      child: Text(faktory.name),
                                    ),
                                  ),
                          verticalSpaceSmall,
                          if (model.selectedFaktory != null) ...[
                            Text('Please, select a field to continue'),
                            verticalSpaceSmall,
                            for (var item in model.pointTable!)
                              Row(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: OutlinedButton.icon(
                                      label: Text(item.label),
                                      onPressed: () =>
                                          model.navigateToSuggestionCreate(
                                              item.field),
                                      icon: Icon(IconData(item.icon,
                                          fontFamily: 'MaterialIcons')),
                                    ),
                                  ),
                                  horizontalSpaceTiny,
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(item.totalPoints.toString() +
                                          ' points'),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ],
                      ),
                    )
                  : Text('Some problem occured')
              : Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
      viewModelBuilder: () => SuggestionMenuViewModel(),
    );
  }
}
