import '../models/models.dart';
import 'ui_helper.dart';

class ScreenKirish {
  static UserProfile show() {
    UIHelper.clear();
    UIHelper.header("KIRISH");

    String firstName = '';
    String lastName = '';
    int age = 0;

    while (firstName.isEmpty) {
      firstName = UIHelper.askText("Ismingizni kiriting");
      if (firstName.isEmpty) {
        UIHelper.error("Ism bo'sh bo'lmasligi kerak.");
      }
    }

    while (lastName.isEmpty) {
      lastName = UIHelper.askText("Familyangizni kiriting");
      if (lastName.isEmpty) {
        UIHelper.error("Familya bo'sh bo'lmasligi kerak.");
      }
    }

    while (age <= 0) {
      age = UIHelper.askInt("Yoshingizni kiriting");
      if (age <= 0) {
        UIHelper.error("Yosh musbat son bo'lishi kerak.");
      }
    }

    UIHelper.success("Ma'lumotlaringiz qabul qilindi.");
    UIHelper.waitEnter();

    return UserProfile(
      firstName: firstName,
      lastName: lastName,
      age: age,
    );
  }
}
