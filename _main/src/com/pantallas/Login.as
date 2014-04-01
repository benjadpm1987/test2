package com.pantallas
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	
	public class Login extends Sprite
	{
		
		public  var myText_login:TextField;
		
		public function Login()
		{
			super();
			crearLogin();
		}
		
		private function crearLogin():void
		{
			var myText:TextField = new TextField();
			myText.text = "Login";
			myText.width=50;
			myText.height=50;
			this.addChild(myText);
			
			
			myText_login = new TextField();
			myText_login.x=myText.x+myText.height;
			myText_login.border=true;
			myText_login.type="input";
			myText_login.width=125;
			myText_login.height=25;
			this.addChild(myText_login);
			
			var myText_usuario:TextField = new TextField();
			myText_usuario.text = "Usuario";
			myText_usuario.y=myText.height;
			myText_usuario.width=50;
			myText_usuario.height=50;
			this.addChild(myText_usuario);
			
			var myText_usu:TextField = new TextField();
			myText_usu.x=myText_usuario.x+myText_usuario.height;
			myText_usu.border=true;
			myText_usu.type="input";
			myText_usu.y=myText_usuario.y;
			myText_usu.width=125;
			myText_usu.height=25;
			this.addChild(myText_usu);
			trace(myText_usu.x);
			
			var btn:Sprite = new Sprite();
			btn.x = myText_usu.x;
			btn.y = myText_usu.y+myText_usu.height + 10;
			
			//
			btn.graphics.beginFill( 0xFF0000, 1);
			btn.graphics.drawRect(0,0,125,25);
			btn.graphics.endFill();
			//
			btn.buttonMode = true;
			btn.addEventListener(MouseEvent.CLICK, myClick, false, 0, true);
			this.addChild(btn);
			
		}
		
		protected function myClick(event:Event):void
		{
			trace("Login");
			var ev:MyEventos = new MyEventos(MyEventos.MOSTRAR_OCULTAR);
			ev.nombre=myText_login.text;
			ev.nada=1;
			this.dispatchEvent(ev);
		}
	}
}