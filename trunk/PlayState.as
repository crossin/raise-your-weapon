package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		protected var player:Character;
		public var enemy:Character;
		
		override public function create():void
		{
			FlxG.bgColor = 0xffeecc99;
			
			player = new Character();
			player.x = 100;
			player.y = 100;
			add(player);
			
			enemy = new Character();
			enemy.x = 500;
			enemy.y = 100;
			add(enemy);
			
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
