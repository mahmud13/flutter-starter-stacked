import '../../../dumb_widgets/base_layout.dart';
import '../../../shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'suggestion_menu_viewmodel.dart';
import '../../../../generated/l10n.dart';

class SuggestionMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    final args =
        ModalRoute.of(context)!.settings.arguments as SuggestionMenuArgs;
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
                          verticalSpaceSmall,
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
                                            args.faktoryId, item.field),
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
