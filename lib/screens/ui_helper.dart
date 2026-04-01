import 'dart:io';

class UIHelper {
  static void clear() {
    stdout.write('\x1B[2J\x1B[0;0H');
  }

  static void header(String title) {
    print('\n==================================================');
    print(' $title');
    print('==================================================\n');
  }

  static void section(String title) {
    print('\n-------------------- $title --------------------\n');
  }

  static void success(String message) {
    print('[OK] $message');
  }

  static void error(String message) {
    print('[XATO] $message');
  }

  static void info(String message) {
    print('[INFO] $message');
  }

  static String askText(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync()?.trim() ?? '';
  }

  static int askInt(String label) {
    while (true) {
      stdout.write("$label: ");
      final input = stdin.readLineSync()?.trim() ?? '';
      final value = int.tryParse(input);

      if (value != null) return value;
      error("Faqat son kiriting.");
    }
  }

  static T chooseFromList<T>({
    required String title,
    required List<T> items,
    required String Function(T item) itemLabel,
  }) {
    while (true) {
      header(title);

      for (int i = 0; i < items.length; i++) {
        print('${i + 1}. ${itemLabel(items[i])}');
      }

      print('');
      final choice = askInt("Tanlang");

      if (choice >= 1 && choice <= items.length) {
        return items[choice - 1];
      }

      error("Notogri tanlov. Qayta urinib koring.");
    }
  }

  static bool confirm(String question) {
    while (true) {
      stdout.write("$question (ha/yoq): ");
      final answer = (stdin.readLineSync() ?? '').trim().toLowerCase();

      if (answer == 'ha' || answer == 'h') return true;
      if (answer == 'yoq' || answer == "yo'q" || answer == 'y') return false;

      error("ha yoki yoq deb kiriting.");
    }
  }

  static void waitEnter() {
    stdout.write('\nDavom etish uchun Enter bosing...');
    stdin.readLineSync();
  }
}
