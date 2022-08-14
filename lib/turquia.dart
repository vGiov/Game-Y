import 'package:bonfire/bonfire.dart';
import 'package:test1/main.dart';
import 'package:test1/turquia_sprite_sheet.dart';

class Turquia extends SimpleEnemy with ObjectCollision{
  Turquia(Vector2 position) 
  : super(
      size: Vector2(80, 80),
      position: position,
      speed: 80,
      //height: tilesize,
      //width: tilesize,
      animation: SimpleDirectionAnimation(
        idleLeft: TurquiaSpriteSheet.TurquiaIdLeft,
        idleRight: TurquiaSpriteSheet.TurquiaIdRight,
        runLeft: TurquiaSpriteSheet.TurquiaRunLeft,
        runRight: TurquiaSpriteSheet.TurquiaRunRight,
        idleDown: TurquiaSpriteSheet.TurquiaIdDown,
        runDown: TurquiaSpriteSheet.TurquiaIdDown,
        idleUp: TurquiaSpriteSheet.TurquiaIdUp,
        runUp: TurquiaSpriteSheet.TurquiaIdUp,
      )
    ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(55, 55),
        align: Vector2(0,10),
        ),
    ]));
  }

  @override 
  void update(double dt){
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(
          damage: 33, 
          size: Vector2(80,80),
          sizePush: 20,
          interval: 500,
        );
      },
      radiusVision: tilesize * 3,
      margin: 2,
    );
    super.update(dt);
  }

}