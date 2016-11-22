package be.flexpert.contact.proxies
{
	import be.flexpert.contact.valueObjects.PersonDTO;
	
	import flash.events.Event;
	
	import mx.controls.Alert;
	import mx.rpc.AsyncToken;
	import mx.rpc.CallResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.mxml.RemoteObject;
	
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;

	public class ContactProxy extends Proxy implements IProxy {
		
		public static const NAME:String = "ContactProxy";
		public static const READ_ALL_PERSONS:String = "readAllPerson";
		public static const CREATE_PERSON:String = "createPerson";
		public static const UPDATE_PERSON:String = "updatePerson";
		public static const DELETE_PERSON:String = "deletePerson";
		public static const READ_SUCCESS:String = "readSuccess";
		
		private var service:RemoteObject;
		private var responder:CallResponder;
		
		public function ContactProxy() {
			super(NAME, new Object());
			service = new RemoteObject("personServices");
			service.showBusyCursor = true;
			service.addEventListener(FaultEvent.FAULT, faultHandler);
			responder = new CallResponder();
			responder.addEventListener(ResultEvent.RESULT, resultHandler);
		}
		
		public function get person():PersonDTO {
			return data as PersonDTO;
		}
		
		public function getAllPersons():void {
			responder.token = service.getAllPersons();
			responder.token.action = READ_ALL_PERSONS;
		}
		
		public function createPerson(person:PersonDTO):void {
			responder.token = service.createPerson(person);
			responder.token.action = CREATE_PERSON;
		}
		
		public function updatePerson(person:PersonDTO):void {
			responder.token = service.updatePerson(person);
			responder.token.action = UPDATE_PERSON;
		}
		
		public function deletePerson(person:PersonDTO):void {
			responder.token = service.deletePerson(person);
			responder.token.action = DELETE_PERSON;
		}
		
		private function resultHandler(event:ResultEvent):void {
			switch(event.token.action) {
				case READ_ALL_PERSONS:
					sendNotification(READ_SUCCESS, event.result);
					break;
				case CREATE_PERSON:
				case UPDATE_PERSON:
				case DELETE_PERSON:
					getAllPersons();
					break;
			}
		}
		
		private function faultHandler(event:FaultEvent):void {
			Alert.show(event.fault.faultString, event.fault.faultCode);
		}
	}
}