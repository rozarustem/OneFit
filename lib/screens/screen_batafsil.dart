import '../models/models.dart';
import 'ui_helper.dart';

class ScreenBatafsil {
  static void show(Sport sport, Club club) {
    UIHelper.clear();
    UIHelper.header("SPORT BATAFSIL");

    print("Sport nomi : ${sport.name}");
    print("Ustoz      : ${sport.coach}");
    print("Klub       : ${club.name}");
    print("Manzil     : ${club.address}");
    print("Tavsif     : ${sport.description}");

    UIHelper.waitEnter();
  }
}
