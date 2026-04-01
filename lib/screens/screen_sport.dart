import '../models/models.dart';
import 'ui_helper.dart';

class ScreenSport {
  static Sport show(List<Sport> sports, List<int> sportIds) {
    final filtered = sports.where((s) => sportIds.contains(s.id)).toList();

    if (filtered.isEmpty) {
      UIHelper.error('Bu klub uchun sport turlari topilmadi.');
      throw Exception('Sport topilmadi');
    }

    UIHelper.clear();

    return UIHelper.chooseFromList<Sport>(
      title: 'SPORT TURLARI',
      items: filtered,
      itemLabel: (sport) => sport.name,
    );
  }
}
