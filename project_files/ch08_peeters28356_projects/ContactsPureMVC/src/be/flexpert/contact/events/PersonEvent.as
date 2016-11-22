package be.flexpert.contact.events
{
	import be.flexpert.contact.valueObjects.PersonDTO;
	
	import flash.events.Event;
	
	public class PersonEvent extends Event {
		private var _person:PersonDTO;
		
		public function PersonEvent(type:String, person:PersonDTO, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			_person = person;
		}
		
		public function get person():PersonDTO {
			return _person;
		}
		
		override public function clone():Event {
			return new PersonEvent(type, _person, bubbles, cancelable);
		}
	}
}