package
{
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
		
		public function Character(isHero:Boolean = false)
		{
			makeGraphic(16, 16, 0xff88cc55);
			x = isHero ? 100 : 500;
			y = 100;
			acceleration.y = 200; //gravity
			drag.x = 100;
			
			life = 100;
			intervalAttack = 2;
			timeAttacked = intervalAttack;
			target = null;
			range = 10;
		}
		
		override public function update():void
		{
			timeAttacked += FlxG.elapsed;
			if (target && )
			
			
			super.update();
		}
		
		protected function attack():void
		{
			if (timeAttacked > intervalAttack)
			{
				flicker(0.5);
				(PlayState(FlxG.state)).enemy.flicker();
				timeAttacked = 0;
			}
		}
		
		protected function inRange(enemy:Character):Boolean
		{
			return FlxU.getDistance(FlxPoint(x, y), FlxPoint(enemy.x, enemy.y)) <= range;
		}
	}

}