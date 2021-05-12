import '../../../../app/app.locator.dart';
import '../../../../models/application_models.dart';
import '../../../../services/factory_service.dart';
import '../../../base/custom_form_view_model.dart';

class FactoryNameViewModel extends CustomFormViewModel {
  String? _region;
  final _factoryService = locator<FactoryService>();

  final Map<String, List<Faktory>> _faktoriesByRegion = {};

  Faktory? selectedFaktory;
  List<UserFaktory> userFaktories = [];

  String? get region => _region;

  void setRegion(String? region) {
    _region = region;
  }

  Future<List<Faktory>> getFactories() async {
    if (_region == null) {
      return [];
    } else if (isFaktoriesLoaded(_region!)) {
      return _faktoriesByRegion[region] ?? [];
    }
    _faktoriesByRegion[_region!] =
        await _factoryService.getFactoriesByRegion(region!);
    return _faktoriesByRegion[_region] ?? [];
  }

  bool isFaktoriesLoaded(String region) =>
      _faktoriesByRegion.containsKey(region);

  @override
  void setFormStatus() {}

  Future getFactoryDetail(String id) async {
    selectedFaktory = await _factoryService.getFactory(id);
    notifyListeners();
  }
}
