import 'package:crowd_sourcing/ui/dumb_widgets/base_layout.dart';
import 'package:crowd_sourcing/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'suggestion_menu_viewmodel.dart';
import '../../../../generated/l10n.dart';

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
                  ? Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          verticalSpaceSmall,
                          Text('Please, select a field to continue'),
                          verticalSpaceSmall,
                          Container(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  for (var item in model.pointTable!)
                                    OutlinedButton.icon(
                                      label: Text(item.label),
                                      onPressed: () =>
                                          model.navigateToSuggestionCreate(),
                                      icon: Icon(IconData(item.icon,
                                          fontFamily: 'MaterialIcons')),
                                    ),
                                ],
                              )),
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
