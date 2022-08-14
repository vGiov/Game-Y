import 'package:bonfire/bonfire.dart';
import 'package:test1/katrina_sprite_sheet.dart';

class Katrina extends SimpleEnemy
    with ObjectCollision, AutomaticRandomMovement {
  Katrina(Vector2 position)
      : super(
          size: Vector2(40, 40),
          position: position,
          speed: 30,
          initDirection: Direction.down,
          animation: SimpleDirectionAnimation(
            idleLeft: KatrinaSpriteSheet.katrinaIdLeft,
            idleRight: KatrinaSpriteSheet.katrinaIdRight,
            runLeft: KatrinaSpriteSheet.katrinaRunLeft,
            runRight: KatrinaSpriteSheet.katrinaRunRight,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(29, 28),
            align: Vector2(3, 6),
          ),
        ],
      ),
    );
  }

  @override
  void update(double dt) {
    
    runRandomMovement(speed);
    simpleAttackMelee(
      damage: 20,
      size: Vector2(10, 10),
      interval: 400,
      withPush: true,
      sizePush: 50,
    );

    super.update(dt);
  }
}