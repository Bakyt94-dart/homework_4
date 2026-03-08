import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(String name, int health, int damage, this.ability)
    : super(name, health, damage);

  int get health => this.health;

  num get damage => this.damage;

  void attack(Boss boss) {
    boss.health -= damage;
  }

  bool isAlive() {
    return health > 0;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class GameCharacter {}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  get damage => null;

  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = ((RpgGame.random.nextInt(5) + 2) * damage!).toInt(); // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hits critically $crit');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  void applySuperPower(Boss boss, List<Hero> heroes) {}
}

class Medic extends Hero {
  int healPonts;
  Medic(String name, int health, int damage, this.healPonts)
    : super(name, health, damage, SuperAbility.heal);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && this != hero) {
        hero.health += healPonts;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name is reverted $blockedDamage');
  }
}
