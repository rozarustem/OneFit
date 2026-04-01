import 'lib/services/data_service.dart';
import 'lib/screens/screen_kirish.dart';
import 'lib/screens/screen_viloyat.dart';
import 'lib/screens/screen_klublar.dart';
import 'lib/screens/screen_sport.dart';
import 'lib/screens/screen_batafsil.dart';
import 'lib/screens/screen_narxlar.dart';
import 'lib/screens/screen_jadval.dart';
import 'lib/screens/screen_profil.dart';
import 'lib/screens/ui_helper.dart';

Future<void> main() async {
  final dataService = DataService();

  try {
    final data = await dataService.loadAppData();

    UIHelper.clear();
    UIHelper.header('ONEFIT TERMINAL DASTURI');

    final user = ScreenKirish.show();

    while (true) {
      final selectedRegion = ScreenViloyat.show(data.regions);
      final selectedClub = ScreenKlublar.show(data.clubs, selectedRegion.id);
      final selectedSport =
          ScreenSport.show(data.sports, selectedClub.sportIds);

      ScreenBatafsil.show(selectedSport, selectedClub);

      final selectedSubscription = ScreenNarxlar.show(data.subscriptions);

      ScreenJadval.show(
        data.schedule,
        selectedClub.id,
        selectedSport.id,
      );

      ScreenProfil.show(
        user: user,
        region: selectedRegion,
        club: selectedClub,
        sport: selectedSport,
        subscription: selectedSubscription,
      );

      final again = UIHelper.confirm(
        'Dastur boshiga qaytib yana tanlashni xohlaysizmi?',
      );

      if (!again) {
        UIHelper.success('Dasturdan foydalanganingiz uchun rahmat!');
        break;
      }
    }
  } catch (e) {
    UIHelper.error('Xatolik yuz berdi: $e');
  }
}
