package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class RaiseYourWeapon extends FlxGame
	{
		public function RaiseYourWeapon()
		{
			super(640, 480, PlayState);
		}
	}
}
