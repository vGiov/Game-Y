import 'package:bonfire/bonfire.dart';
import 'package:test1/game_sprite_sheet.dart';

class GameShip extends SimplePlayer with ObjectCollision {
  GameShip(Vector2 position)
      : super(
          size: Vector2(60, 60),
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: GameSpriteSheet.shipIdLeft,
            idleRight: GameSpriteSheet.shipIdRight,
            runLeft: GameSpriteSheet.shipRunLeft,
            runRight: GameSpriteSheet.shipRunRight,
            idleDown: GameSpriteSheet.shipIdDown,
            runDown: GameSpriteSheet.shipRunDown,
            idleUp: GameSpriteSheet.shipIdUp,
            runUp: GameSpriteSheet.shipRunUp,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(32, 32)),
    ]));
  }
}
