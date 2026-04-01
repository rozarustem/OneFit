import '../models/models.dart';
import 'ui_helper.dart';

class ScreenKlublar {
  static Club show(List<Club> clubs, int regionId) {
    final filtered = clubs.where((c) => c.regionId == regionId).toList();

    if (filtered.isEmpty) {
      UIHelper.error('Bu viloyatda hozircha klub topilmadi.');
      throw Exception('Klub topilmadi');
    }

    UIHelper.clear();

    return UIHelper.chooseFromList<Club>(
      title: "KLUBLAR RO'YXATI",
      items: filtered,
      itemLabel: (club) => '${club.name} | ${club.address}',
    );
  }
}
