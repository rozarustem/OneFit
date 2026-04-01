import '../models/models.dart';
import 'ui_helper.dart';

class ScreenProfil {
  static void show({
    required UserProfile user,
    required Region region,
    required Club club,
    required Sport sport,
    required Subscription subscription,
  }) {
    UIHelper.clear();
    UIHelper.header("PROFIL");

    print("Ism           : ${user.firstName}");
    print("Familya       : ${user.lastName}");
    print("Yosh          : ${user.age}");
    print("Viloyat       : ${region.name}");
    print("Klub          : ${club.name}");
    print("Sport         : ${sport.name}");
    print("Tarif         : ${subscription.name}");
    print("Tarif narxi   : ${subscription.price} so'm");

    UIHelper.waitEnter();
  }
}
