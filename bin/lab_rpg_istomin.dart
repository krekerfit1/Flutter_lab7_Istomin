import 'dart:math';

abstract class Character {
  // 1. Сначала объявляем все поля (переменные)
  final String name;
  int hp;
  final int maxHp;
  final Random _random = Random();

  // 2. Затем идет конструктор
  Character({
    required this.name,
    required this.hp,
  }) : maxHp = hp; // Инициализируем maxHp текущим значением hp

  // 3. Теперь объявляем методы и геттеры
  int attack(); // Абстрактный метод (без тела)

  void takeDamage(int damage) {
    hp -= damage;
    if (hp < 0) hp = 0;
  }

  bool get isAlive => hp > 0;

  String get hpBar {
    return 'HP: $hp/$maxHp'; 
  }

  void describe() {
    print('$name (${isAlive ? "Жив" : "Мертв"})');
  }

  @override
  String toString() {
    return '$name - $hpBar';
  }
}