package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		protected var player:Character;
		public var enemy:Character;
		
		public var heroes:FlxGroup;
		public var enemies:FlxGroup;
		
		override public function create():void
		{
			FlxG.bgColor = 0xffeecc99;
			
			heroes = new FlxGroup();
			add(heroes);
			enemies = new FlxGroup();
			add(enemies);
			
			heroes.add(new Hero1);
			enemies.add(new Monster1);

			//enemies.add(enemy);
			
			var ground:FlxSprite = new FlxSprite(80, 200);
			ground.makeGraphic(480, 32);
			ground.immovable = true;
			add(ground);
		}
		
		override public function update():void
		{
			FlxG.collide();
			super.update();
		}
	}
}
