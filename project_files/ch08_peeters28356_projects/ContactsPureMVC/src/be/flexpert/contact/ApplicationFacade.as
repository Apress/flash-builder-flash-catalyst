package be.flexpert.contact
{
	import be.flexpert.contact.mediators.ContactMediator;
	import be.flexpert.contact.proxies.ContactProxy;
	import be.flexpert.contact.views.Contacts;
	
	import mx.controls.Alert;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	
	import spark.components.Application;

	public class ApplicationFacade extends Facade implements IFacade {
		
		private static var _instance:ApplicationFacade = null;
		
		public function ApplicationFacade(sb:SingletonBlocker) {
			if(sb == null) {
				Alert.show("You should not create an instance of ApplicationFacede directly. Use the getInstance method instead.",
						   "Singleton violation");
			} else {
				super();
			}
		}
		
		public static function getInstance():ApplicationFacade {
			if(_instance == null) {
				_instance = new ApplicationFacade(new SingletonBlocker());
			}
			
			return _instance;
		}
		
		override protected function initializeController():void {
			super.initializeController();
		}
		
		public function startup(view:Contacts):void {
			registerMediator(new ContactMediator(view));
			registerProxy(new ContactProxy());
		}
	}
}

internal class SingletonBlocker {}