package be.flexpert.contact.managers
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;

	public class PersonManager extends EventDispatcher {
		private var _personsList:ArrayCollection;
		
		public function PersonManager() {
		}
		
		[Bindable(event="listUpdated") ]
		public function get personsList():ArrayCollection {
			return _personsList;
		}
		
		public function storeList(value:ArrayCollection):void {
			_personsList = value;
			dispatchEvent(new Event("listUpdated", true));
		}
	}
}