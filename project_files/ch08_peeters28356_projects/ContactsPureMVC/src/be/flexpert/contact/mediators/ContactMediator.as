package be.flexpert.contact.mediators
{
	import be.flexpert.contact.events.PersonEvent;
	import be.flexpert.contact.proxies.ContactProxy;
	import be.flexpert.contact.views.Contacts;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;

	public class ContactMediator extends Mediator implements IMediator {
		
		public static const NAME:String = "ContactMediator";
		
		public function ContactMediator(viewComponent:Contacts) {
			super(NAME, viewComponent);
			viewComponent.addEventListener(ContactProxy.READ_ALL_PERSONS, getAllPersons);
			viewComponent.addEventListener(ContactProxy.CREATE_PERSON, createPerson);
			viewComponent.addEventListener(ContactProxy.UPDATE_PERSON, updatePerson);
			viewComponent.addEventListener(ContactProxy.DELETE_PERSON, deletePerson);
		}
		
		override public function listNotificationInterests():Array {
			return [ContactProxy.READ_SUCCESS];
		}
		
		override public function handleNotification(notification:INotification):void {
			switch(notification.getName()) {
				case ContactProxy.READ_SUCCESS:
					contactsView.personsList = notification.getBody() as ArrayCollection;
					break;
			}
		}
		
		private function get contactsView():Contacts {
			return viewComponent as Contacts;
		}
		
		private function getAllPersons(event:Event):void {
			var proxy:ContactProxy = facade.retrieveProxy(ContactProxy.NAME) as ContactProxy;
			proxy.getAllPersons();
		}
		
		private function createPerson(event:PersonEvent):void {
			var proxy:ContactProxy = facade.retrieveProxy(ContactProxy.NAME) as ContactProxy;
			proxy.createPerson(event.person);
		}
		
		private function updatePerson(event:PersonEvent):void {
			var proxy:ContactProxy = facade.retrieveProxy(ContactProxy.NAME) as ContactProxy;
			proxy.updatePerson(event.person);
		}
		
		private function deletePerson(event:PersonEvent):void {
			var proxy:ContactProxy = facade.retrieveProxy(ContactProxy.NAME) as ContactProxy;
			proxy.deletePerson(event.person);
		}
	}
}