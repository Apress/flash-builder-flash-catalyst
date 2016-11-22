package be.flexpert.contact.events
{
	import be.flexpert.contact.valueObjects.PersonDTO;
	
	import flash.events.Event;
	
	public class PersonEvent extends Event
	{
		static public const READ:String = "fetchPersons";
		static public const CREATE:String = "createPerson";
		static public const UPDATE:String = "updatePerson";
		static public const DELETE:String = "deletePerson";
		
		private var _person:PersonDTO;
		
		public function PersonEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, true, cancelable);
		}
		
		public function get person():PersonDTO {
			return _person;
		}
		
		public function set person(value:PersonDTO):void {
			_person = value;
		}
	}
}