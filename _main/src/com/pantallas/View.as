package com.pantallas
{
	import flash.display.Sprite;
	import flash.text.TextField;
	
	public class View extends Sprite
	{
		public function View(nombre:String)
		{
			super();
			crearMensaje(nombre);
		}
		
		private function crearMensaje(nombre:String):void
		{
			var myText:TextField = new TextField();
			myText.text = "Bienvenido " + nombre;
			myText.width=100;
			myText.height=100;
			this.addChild(myText);
			
		}
	}
}