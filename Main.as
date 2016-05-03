package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.KeyLocation;
	import flash.ui.Keyboard;
	import PlayerMC;
	
	public class Main extends MovieClip {
		
		private var keyCodes :KeyLocation;
		private var player : MovieClip;
		
		public function Main() {
			// constructor code
			player = new PlayerMC();
			
			stage.addChild(player);
			startGame();
		}
		
		public function startGame() :void 
		{
			TeclaPressionada.defaultValuesTeclaPressionada();
			
			
			stage.addEventListener(Event.ENTER_FRAME, enterFrame);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyboardDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyboardUp);
		}
		
		public function enterFrame(e:Event) : void 
		{
			//EnterFame code
			player.movimentaPlayer();
		}
		
		public function keyboardDown(e:KeyboardEvent) : void
		{
			condicoesKeyDownORKeyUp(e, true);
		}
		
		public function keyboardUp(e:KeyboardEvent) : void 
		{
			condicoesKeyDownORKeyUp(e, false);
		}
		
		private function condicoesKeyDownORKeyUp (e:KeyboardEvent, isDown : Boolean) :void 
		{
			var defaultValueKeyDown : Boolean = isDown;
			
			//MOVIMENTACAO DO PERSONAGEM
			if (e.keyCode == Keyboard.UP) 
			{
				TeclaPressionada.pressedUp = defaultValueKeyDown;
			} 
			else if (e.keyCode == Keyboard.DOWN)
			{
				TeclaPressionada.pressedDown = defaultValueKeyDown;
			} 
			else if (e.keyCode == Keyboard.RIGHT) 
			{
				TeclaPressionada.pressedRight = defaultValueKeyDown;
			} 
			else if (e.keyCode == Keyboard.LEFT)
			{
				TeclaPressionada.pressedLeft = defaultValueKeyDown;
			}
			
			//TECLA DE ATAQUE
			if (e.keyCode == Keyboard.SPACE)
			{
				TeclaPressionada.pressedSpace = defaultValueKeyDown;
			}
			
			//SELECA DE ARMA
			if (e.keyCode == Keyboard.NUMBER_1)
			{
				TeclaPressionada.pressedOne = defaultValueKeyDown;
			}
			
			if (e.keyCode == Keyboard.NUMBER_2)
			{
				TeclaPressionada.pressedTwo = defaultValueKeyDown;
			}
			
			if (e.keyCode == Keyboard.NUMBER_3)
			{
				TeclaPressionada.pressedThree = defaultValueKeyDown;
			}
		}
	
	}
	
}
