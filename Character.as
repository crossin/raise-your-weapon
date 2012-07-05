package
{
	import mx.core.FlexSprite;
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Crossin
	 */
	public class Character extends FlxSprite
	{
		protected var life:int;
		protected var intervalAttack:Number;
		protected var timeAttacked:Number;
		protected var target:Character;
		protected var range:Number;
		protected var speed:Number;
		protected var state:PlayState;
		protected var isHero:Boolean;
		
		public function Character(isHr:Boolean = false)
		{
			isHero = isHr;
			makeGraphic(16, 16, 0xff88cc55);
			x = isHero ? 100 : 500;
			y = 100;
			acceleration.y = 200; //gravity
			drag.x = 100;
			
			life = 100;
			intervalAttack = 2;
			timeAttacked = intervalAttack;
			target = null;
			range = 50;
			
			if (isHero)
			{
				x = 100;
				speed = 50;
			}
			else
			{
				x = 500;
				speed = -50;
			}
			
			state = PlayState(FlxG.state);
			
			
		}
		
		override public function update():void
		{
			timeAttacked += FlxG.elapsed;
			if (target && inRange(target))
			{
				attack();
			}
			else
			{
				if (findTarget())
				{
					attack();
				}
				else
				{
					move();				
				}
			}
			super.update();
		}
		
		protected function attack():void
		{
			velocity.x = 0;
			if (timeAttacked > intervalAttack)
			{
				flicker(0.5);
				target.flicker();
				timeAttacked = 0;
			}
		}
		
		protected function move():void
		{
			velocity.x = speed;
		}
		
		protected function inRange(enemy:Character):Boolean
		{
			return (FlxU.getDistance(new FlxPoint(x, y), new FlxPoint(enemy.x, enemy.y)) <= range);
		}
		
		protected function findTarget():Boolean
		{
			var enms:Array = isHero ? state.enemies.members : state.heroes.members;
			for each (var enm:Character in enms)
			{
				if (inRange(enm))
				{
					target = enm;
					return true;
				}
			}
			return false;
		}
	}

}