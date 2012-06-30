package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		override public function create():void
		{
			FlxG.bgColor = 0xffffeeee;;
			var s:FlxSprite = new FlxSprite(100, 100);
			s.makeGraphic(32, 32);
			add(s);
		}
		
		override public function update():void
		{
			super.update();
		}
	}
}
