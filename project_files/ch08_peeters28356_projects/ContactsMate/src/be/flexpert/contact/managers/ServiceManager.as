package be.flexpert.contact.managers
{
	import flash.events.EventDispatcher;
	
	import mx.rpc.remoting.mxml.RemoteObject;

	public class ServiceManager extends EventDispatcher {
		
		private var _personService:RemoteObject;
		
		public function ServiceManager() {
			_personService = new RemoteObject("personServices");
			_personService.showBusyCursor = true;
		}
		
		public function get personService():RemoteObject {
			return _personService;
		}
	}
}