import '../../../../services/factory_service.dart';

import '../../../../models/application_models.dart';
import '../../../base/custom_form_view_model.dart';
import '../../../../app/app.locator.dart';

class FactoryNameViewModel extends CustomFormViewModel {
  String? _region;
  final _factoryService = locator<FactoryService>();

  final Map<String, List<Faktory>> _factoriesByRegion = {};

  Faktory? selectedFactory;

  String? get region => _region;
  void setRegion(String? region) {
    _region = region;
  }

  Future<List<Faktory>> getFactories() async {
    if (_region == null) {
      return [];
    } else if (isFactoriesLoaded(_region!)) {
      return _factoriesByRegion[region] ?? [];
    }
    _factoriesByRegion[_region!] =
        await _factoryService.getFactoriesByRegion(region!);
    return _factoriesByRegion[_region] ?? [];
  }

  bool isFactoriesLoaded(String region) =>
      _factoriesByRegion.containsKey(region);

  @override
  void setFormStatus() {}

  Future getFactoryDetail(String id) async {
    selectedFactory = await _factoryService.getFactory(id);
    notifyListeners();
  }
}
