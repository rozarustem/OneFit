import '../models/models.dart';
import 'ui_helper.dart';

class ScreenNarxlar {
  static Subscription show(List<Subscription> subscriptions) {
    UIHelper.clear();
    UIHelper.header("NARXLAR");

    for (int i = 0; i < subscriptions.length; i++) {
      final sub = subscriptions[i];
      print("${i + 1}. ${sub.name} - ${sub.price} so'm");
      for (final benefit in sub.benefits) {
        print("   - $benefit");
      }
      print('');
    }

    while (true) {
      final choice = UIHelper.askInt("Tarif tanlang");

      if (choice >= 1 && choice <= subscriptions.length) {
        final selected = subscriptions[choice - 1];
        UIHelper.success("${selected.name} tarifi tanlandi.");
        UIHelper.waitEnter();
        return selected;
      }

      UIHelper.error("Notogri tanlov.");
    }
  }
}
