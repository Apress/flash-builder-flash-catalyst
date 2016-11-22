package be.flexpert.webshop.events
{
	import be.flexpert.webshop.valueObjects.Photo;
	
	import flash.events.Event;
	
	public class PhotoEvent extends Event
	{
		public static const DETAIL:String = "showDetail";
		public static const ADD_TO_SHOPPINGCART:String = "addToShoppingCart";
		
		private var _photo:Photo;
		
		public function PhotoEvent(type:String, photo:Photo, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_photo = photo;
		}
		
		public function get photo():Photo {
			return _photo;
		}
		
		override public function clone():Event {
			return new PhotoEvent(type, _photo, bubbles, cancelable);
		}
	}
}