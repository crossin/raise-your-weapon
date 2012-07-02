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
		
		public function Character()
		{
			makeGraphic(16, 16, 0xff88cc55);
			acceleration.y = 200; //gravity
			drag.x = 100;
			
			life = 100;
			intervalAttack = 2;
			timeAttacked = intervalAttack;
		}
		
		override public function update():void
		{
			
			timeAttacked -= FlxG.elapsed;
			if (timeAttacked < 0)
			{
				attack();
				timeAttacked = intervalAttack;
			}
			
			super.update();
		}
		
		public function attack():void
		{
			flicker(0.5);
			(PlayState(FlxG.state)).enemy.flicker();
		}
	}

}