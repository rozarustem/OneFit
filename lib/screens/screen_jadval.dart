import '../models/models.dart';
import 'ui_helper.dart';

class ScreenJadval {
  static void show(
    List<ScheduleItem> items,
    int clubId,
    int sportId,
  ) {
    UIHelper.clear();
    UIHelper.header("MASHG'ULOT JADVALI");

    final filtered =
        items.where((e) => e.clubId == clubId && e.sportId == sportId).toList();

    if (filtered.isEmpty) {
      UIHelper.info('Bu sport uchun jadval hozircha mavjud emas.');
      UIHelper.waitEnter();
      return;
    }

    for (final item in filtered) {
      print('${item.day} | ${item.time} | Ustoz: ${item.coach}');
    }

    UIHelper.waitEnter();
  }
}
