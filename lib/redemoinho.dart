import 'package:bonfire/bonfire.dart';
import 'package:test1/redemoinho_sprite_sheet.dart';

class Redemoinho extends SimpleEnemy{
  Redemoinho(Vector2 position)
  :super(
    size: Vector2(150, 150),
    position: position,
    animation: SimpleDirectionAnimation(
        idleLeft: RedemoinhoSpriteSheet.RedemoinhoIdLeft,
        idleRight: RedemoinhoSpriteSheet.RedemoinhoIdRight,
        runLeft: RedemoinhoSpriteSheet.RedemoinhoRunLeft,
        runRight: RedemoinhoSpriteSheet.RedemoinhoRunRight,
      )
    );
}