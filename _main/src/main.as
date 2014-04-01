package
{
	import com.pantallas.Login;
	import com.pantallas.MyEventos;
	import com.pantallas.View;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	public class main extends Sprite
	{
		public function main()
		{
			var _Login:Login = new Login();
			this.addChild(_Login);
			_Login.addEventListener(MyEventos.MOSTRAR_OCULTAR,Ocultar);
			//hola
			
		}
		
		protected function Ocultar(event:MyEventos):void
		{
			trace("Desaparecer Login",event.nombre)
			var t:Login = event.target as Login;
			t.visible=false;
			var View_:View = new View(event.nombre);
			
			this.addChild(View_);
			
		}
	}
}