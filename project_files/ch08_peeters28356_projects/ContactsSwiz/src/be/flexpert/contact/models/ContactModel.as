package be.flexpert.contact.models {
	import be.flexpert.contact.valueObjects.PersonDTO;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	public class ContactModel {
		
		private var _personsList:ArrayCollection;
		
		public function ContactModel() {
		}

		public function get personsList():ArrayCollection {
			return _personsList;
		}

		public function set personsList(value:ArrayCollection):void {
			_personsList = value;
		}
	}
}