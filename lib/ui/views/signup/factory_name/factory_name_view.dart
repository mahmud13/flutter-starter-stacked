import 'package:crowd_sourcing/generated/l10n.dart';
import 'package:crowd_sourcing/models/application_models.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../shared/ui_helpers.dart';
import 'factory_name_view_model.dart';

class FactoryNameView extends StatelessWidget {
  final VoidCallback stepDown;
  final Function onSubmit;

  FactoryNameView({required this.stepDown, required this.onSubmit});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FactoryNameViewModel>.reactive(
      builder: (context, model, child) => Form(
        key: model.formKey,
        autovalidateMode: model.autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceTiny,
            Container(
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                label: S.current.region,
                items: ['Dhaka', 'Narayanganj', 'Gazipur'],
                onChanged: (String? item) => model.setRegion(item),
                selectedItem: null,
                validator: (String? item) {
                  return item == null ? S.current.regionIsRequired : null;
                },
              ),
            ),
            verticalSpaceTiny,
            Container(
              child: DropdownSearch<Factory>(
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  label: S.current.factory,
                  onFind: (String term) {
                    return model.getFactories();
                  },
                  emptyBuilder: (BuildContext context, String? s) =>
                      Center(child: Text(S.current.selectRegionFirst)),
                  onChanged: (Factory? item) {
                    // getFactoryDetail(model, item.id);
                  },
                  selectedItem: null,
                  itemAsString: (Factory item) => item.name,
                  validator: (Factory? item) =>
                      item == null ? S.current.factoryIsRequired : null),
            ),
            verticalSpaceMedium,
            if (model.selectedFactory != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.youSelected + ':',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(model.selectedFactory!.name),
                  Text(model.selectedFactory!.address!),
                ],
              ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[700]),
                  onPressed: stepDown,
                  child: Text(S.current.back),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green[700]),
                  onPressed: () {
                    if (model.formKey.currentState!.validate()) {
                      onSubmit(model.selectedFactory!.id);
                    } else {
                      model.setAutovalidateModeAlways();
                    }
                  },
                  child: const Text('Next'),
                )
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => FactoryNameViewModel(),
    );
  }
}
