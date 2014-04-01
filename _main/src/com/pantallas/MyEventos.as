package com.pantallas
{
	import flash.events.Event;
	
	public class MyEventos extends Event
	{
		
		public var nombre:String ="";
		public var nada:int=0;
		
		
		public static const MOSTRAR_OCULTAR:String = "mostrar_ocultar";
		
		
		public function MyEventos(type:String = null)
		{
			super(type);
			
		}
	}
}