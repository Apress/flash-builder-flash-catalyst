package be.flexpert.contact.events
{
	import be.flexpert.contact.valueObjects.PersonDTO;
	
	import flash.events.Event;
	
	public class PersonEvent extends Event {
		
		static public const READ:String = "fetchPersons";
		static public const CREATE:String = "createPerson";
		static public const UPDATE:String = "updatePerson";
		static public const DELETE:String = "deletePerson";
		
		private var _person:PersonDTO;
		
		public function PersonEvent(type:String, person:PersonDTO, cancelable:Boolean=false) {
			super(type, true, cancelable);
			_person = person;
		}
		
		public function get person():PersonDTO {
			return _person;
		}
		
		override public function clone():Event {
			return new PersonEvent(type, _person, cancelable);
		}
	}
}