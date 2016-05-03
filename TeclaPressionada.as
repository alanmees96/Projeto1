package 
{
	
	/**
	 * ...
	 * @author Alan
	 */
	public class  TeclaPressionada
	{
		//Movimentacao de personagem
		public static var pressedUp : Boolean;
		public static var pressedRight : Boolean;
		public static var pressedDown : Boolean;
		public static var pressedLeft :Boolean;
		
		//Ataque de personagem
		public static var pressedSpace : Boolean;
		
		//Selecao de arma do personagem
		public static var pressedOne : Boolean;
		public static var pressedTwo : Boolean;
		public static var pressedThree : Boolean;
		
		public static function defaultValuesTeclaPressionada () : void 
		{
			var defaultValue : Boolean = false;
			
			pressedUp = defaultValue;
			pressedRight = defaultValue;
			pressedDown = defaultValue;
			pressedLeft = defaultValue;
			
			pressedSpace = defaultValue;
			
			pressedOne = defaultValue;
			pressedTwo = defaultValue;
			pressedThree = defaultValue;
		}
	}
	
}