package be.flexpert.contact.valueObjects {
	[Managed]
	[RemoteClass(alias="com.domain.project.valueObjects.PersonDTO")]  
	public class PersonDTO {
		private var _id:Number;
		private var _firstname:String;
		private var _lastname:String;
		private var _phone:String;
		private var _email:String; 
		
		public function PersonDTO() {
			_id = 0;
		}
		
		public function set id(v:Number):void {
			_id = v;
		}

		public function get id():Number {
			return _id;
		}
		
		public function set firstname(v:String):void {
			_firstname = v;
		}
		
		public function get firstname():String {
			return _firstname;
		}
		
		public function set lastname(v:String):void {
			_lastname = v;
		}
		
		public function get lastname():String {
			return _lastname;
		}
		
		public function set phone(v:String):void {
			_phone = v;
		}
		
		public function get phone():String {
			return _phone;
		}
		public function set email(v:String):void {
			_email = v;
		}
		public function get email():String {
			return _email;
		}
		
		public function clone():PersonDTO {
			var copy:PersonDTO = new PersonDTO();
			copy.id = id;
			copy.firstname = firstname;
			copy.lastname = lastname;
			copy.phone = phone;
			copy.email = email;
			
			return copy;
		}
	}
}
