// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:surf_dart_courses_template/surf_dart_courses_template.dart'
    as surf_dart_courses_template;

class VinylPlayer {
  final String brand; // Бренд проигрывателя
  final String model; // Модель проигрывателя
  final int year; // Год выпуска проигрывателя
  final int price; // Цена проигрывателя
  bool _isPlaying; // Статус работы
  int volume; // Громкость
  StylusType stylus;

  VinylPlayer({
    required this.brand,
    required this.model,
    required this.year,
    required this.price,
  })  : _isPlaying = false,
        volume = 100,
        stylus = StylusType.Spherical;

  void start() {
    if (_isPlaying) {
      print('Уже играет');
    } else {
      _isPlaying = true;
      print('Начинает играть');
    }
  }

  void stop() {
    if (!_isPlaying) {
      print('Не играет');
    } else {
      _isPlaying = false;
      print('Остановлено');
    }
  }

  void increaseVolume() {
    if (volume < 100) {
      volume += 10;
      print('Громкость увеличена, текущая громкость: $volume');
    } else {
      print('Установлена максимальная громкость');
    }
  }

  void decreaseVolume() {
    if (volume > 0) {
      volume -= 10;
      print('Громкость уменьшена, текущая громкость: $volume');
    } else {
      print('Установлена минимальная громкость');
    }
  }

  void changeStylusType(StylusType newStylus) {
    stylus = newStylus;
    print(
        'Тип иглы изменен, текущий тип: ${stylus.toString().split('.').last}');
  }
}

enum StylusType { Spherical, Elliptical, Hyperelliptical }

void main() {
  VinylPlayer player = VinylPlayer(
    brand: 'Lenco',
    model: 'LS-50GY',
    year: 2020,
    price: 150,
  );

  player.start();
  player.decreaseVolume();
  player.increaseVolume();

  player.changeStylusType(StylusType.Elliptical);
  player.stop();
}
