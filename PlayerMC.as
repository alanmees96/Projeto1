package  {
	
	import flash.display.MovieClip;
	
	
	public class PlayerMC extends MovieClip {
		
		private var velocidadePlayer : int = 15;
		
		public function PlayerMC() {
			// constructor code
		}
		
		public function movimentaPlayer () : void {
			
			if (TeclaPressionada.pressedUp)
			{
				if (this.y > 0)
				{
					if (this.y <= velocidadePlayer)
					{
						this.y = velocidadePlayer - this.y;
					} 
					else
					{
						this.y -= velocidadePlayer;
					}
				}
			}
			else if (TeclaPressionada.pressedRight)
			{
				if (this.x + this.width < stage.stageWidth)
				{
					this.x += velocidadePlayer;
				}
			}
			else if (TeclaPressionada.pressedDown)
			{
				this.y += velocidadePlayer;
			}
			else if (TeclaPressionada.pressedLeft)
			{
				if (this.x > 0)
				{
					if (this.x <= velocidadePlayer) {
						this.x = velocidadePlayer - this.x;
					}
					else
					{
						this.x -= velocidadePlayer
					}
				}
				
			}
			
		}
	}
	
}
