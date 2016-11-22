package be.flexpert.contact.controllers {
	import be.flexpert.contact.events.PersonEvent;
	import be.flexpert.contact.models.ContactModel;
	import be.flexpert.contact.valueObjects.PersonDTO;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.CallResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.mxml.RemoteObject;
	
	public class ContactController {
		
		[Autowire]
		public var service:RemoteObject; 
		
		[Autowire]
		public var model:ContactModel;
	
		private var _responder:CallResponder;
		
		public function ContactController() {
			_responder = new CallResponder();
			_responder.addEventListener(ResultEvent.RESULT, resultHandler);
		}
		
		[Mediate(event="PersonEvent.READ")]
		public function getAllPersons(event:PersonEvent):void {
			retrieveContactsList();
		}
		
		private function retrieveContactsList():void {
			_responder.token = service.getAllPersons();
			_responder.token.action = PersonEvent.READ;
		}
		
		[Mediate(event="PersonEvent.CREATE", properties="person")]
		public function createPerson(person:PersonDTO):void {
			_responder.token = service.createPerson(person);
			_responder.token.action = PersonEvent.CREATE;	
		}
		
		[Mediate(event="PersonEvent.UPDATE", properties="person")]
		public function updatePerson(person:PersonDTO):void {
			_responder.token = service.updatePerson(person);
			_responder.token.action = PersonEvent.UPDATE;
			
		}
		
		[Mediate(event="PersonEvent.DELETE", properties="person")]
		public function deletePerson(person:PersonDTO):void {
			_responder.token = service.deletePerson(person);
			_responder.token.action = PersonEvent.DELETE;
			
		}
		
		private function resultHandler(event:ResultEvent):void {
			switch(event.token.action) {
				case PersonEvent.READ:
					model.personsList = event.result as ArrayCollection;
					break;
				case PersonEvent.CREATE:
				case PersonEvent.UPDATE:
				case PersonEvent.DELETE:
					retrieveContactsList();
					break;
			}
		}
	}
}