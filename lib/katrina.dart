import 'package:bonfire/bonfire.dart';
import 'package:test1/katrina_sprite_sheet.dart';

class Katrina extends SimpleEnemy with ObjectCollision{
  Katrina(Vector2 position) 
  : super(
      size: Vector2(40, 40),
      position: position,
      speed: 30,
      //height: tilesize,
      //width: tilesize,
      animation: SimpleDirectionAnimation(
        idleLeft: KatrinaSpriteSheet.katrinaIdLeft,
        idleRight: KatrinaSpriteSheet.katrinaIdRight,
        runLeft: KatrinaSpriteSheet.katrinaRunLeft,
        runRight: KatrinaSpriteSheet.katrinaRunRight,
      )
    ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(29, 28),
        align: Vector2(3,6),
        ),
    ]));
  }

}