// Copyright Steven Peeters (c), 2010
package be.flexpert.webshop.valueObjects {
	public class SearchItem {
		private var _image:Class;
		private var _text:String;
		
		public function SearchItem() {
		}
		
		
		public function get image():Class {
			return _image;
		}

		public function set image(value:Class):void {
			_image = value;
		}

		public function get text():String {
			return _text;
		}

		public function set text(value:String):void {
			_text = value;
		}
	}
}