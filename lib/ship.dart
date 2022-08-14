import 'dart:ui';

import 'package:bonfire/bonfire.dart';
import 'package:test1/ship_sprite_sheet.dart';

class GameShip extends SimplePlayer with ObjectCollision {
  GameShip(Vector2 position)
      : super(
          size: Vector2(40, 40),
          position: position,
          life: 100,
          speed: 150,
          animation: SimpleDirectionAnimation(
            idleLeft: ShipSpriteSheet.shipIdLeft,
            idleRight: ShipSpriteSheet.shipIdRight,
            runLeft: ShipSpriteSheet.shipRunLeft,
            runRight: ShipSpriteSheet.shipRunRight,
            idleDown: ShipSpriteSheet.shipIdDown,
            runDown: ShipSpriteSheet.shipRunDown,
            idleUp: ShipSpriteSheet.shipIdUp,
            runUp: ShipSpriteSheet.shipRunUp,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(29, 28),
        align: Vector2(3,6),
        ),
    ]));

  }

  @override
  void die(){
    removeFromParent();
    super.die();
  }

  @override
  void render(Canvas canvas){
    drawDefaultLifeBar(
      canvas,
      borderWidth: 2,
      height: 2,
      // ignore: prefer_const_constructors
      align: Offset(0, -5),
      );
      super.render(canvas);
  }
/*
  @override
  void receiveDamage(double damage, int from){
    super.receiveDamage(damage, from);
  }
*/
}

