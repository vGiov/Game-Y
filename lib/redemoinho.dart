import 'package:bonfire/bonfire.dart';
import 'package:test1/main.dart';
import 'package:test1/redemoinho_sprite_sheet.dart';

class Redemoinho extends SimpleEnemy with ObjectCollision{
  Redemoinho(Vector2 position)
  :super(
    size: Vector2(150, 150),
    speed: 0,
    position: position,
    animation: SimpleDirectionAnimation(
        idleLeft: RedemoinhoSpriteSheet.RedemoinhoIdLeft,
        idleRight: RedemoinhoSpriteSheet.RedemoinhoIdRight,
        runLeft: RedemoinhoSpriteSheet.RedemoinhoRunLeft,
        runRight: RedemoinhoSpriteSheet.RedemoinhoRunRight,
      )
    ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 47,
        //size: Vector2(150, 150),
        align: Vector2(28,28),
        ),
    ]));
  }

  @override 
  void update(double dt){
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(
          damage: 60, 
          size: Vector2(80,80),
          withPush: true,
          sizePush: 100,
          interval: 500,
        );
      },
      radiusVision: tilesize * 3,
      margin: 2,
    );
    super.update(dt);
  }

}