package  
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Crossin
	 */
	public class Character extends FlxSprite 
	{
		
		public function Character() 
		{
			makeGraphic(16, 16, 0xff88cc55);
			acceleration.y = 200; //gravity
			drag.x = 100;
		}
	}
}