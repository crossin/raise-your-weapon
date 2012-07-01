package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		override public function create():void
		{
			FlxG.bgColor = 0xffee9966;
			var player:Character = new Character();
			player.x = 100;
			player.y = 100;
			add(player);
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
