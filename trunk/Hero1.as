package
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Crossin
	 */
	public class Hero1 extends Character
	{
		public function Hero1(isHr:Boolean = true)
		{
			super(isHr);
			makeGraphic(16, 16, 0xffcc8855);
			range = 100;
		}
	}
}