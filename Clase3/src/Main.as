package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Utils.start.DStarling;
	
	/**
	 * ...
	 * @author Miguel Gallardo
	 */
	[SWF(frameRate=60, height=600, width=400)]
	public class Main extends Sprite 
	{
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			var assets:Vector.<String> = new Vector.<String>();
			assets.push('assets/scene1.png');
			assets.push('assets/walk.png');
			assets.push('assets/walk.xml');
			assets.push('assets/coin.png');
			DStarling.init(Game, stage, assets, startGame);
		}
		
		private function startGame():void 
		{
			trace("start Game");
			
		}
		
	}
	
}