import '../models/models.dart';
import 'ui_helper.dart';

class ScreenViloyat {
  static Region show(List<Region> regions) {
    UIHelper.clear();

    return UIHelper.chooseFromList<Region>(
      title: 'VILOYAT TANLASH',
      items: regions,
      itemLabel: (region) => region.name,
    );
  }
}
