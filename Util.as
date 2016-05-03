package  {
	import flash.display.MovieClip;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	import flash.display.DisplayObjectContainer;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	public class Util extends MovieClip{
		
		
		public function Util() {}
		
		/**
		 * Complex collision test. Use this for objects that are rotated, scaled, skewed, etc
		 * @param	clip1	Takes DisplayObjectContainer as argument. Can be a Sprite, MovieClip, etc.
		 * @param	clip2	Takes DisplayObjectContainer as argument. Can be a Sprite, MovieClip, etc.
		 * @return	Collision True/False
		 */
		public static function complex(clip1:DisplayObjectContainer, clip2:DisplayObjectContainer):Boolean
		{
			// vars
		 var _returnValue:Boolean;
		
		 var _onePoint:Point;
		 var _twoPoint:Point;
		
		 var _oneRectangle:Rectangle;
		 var _twoRectangle:Rectangle;
		
		 var _oneClipBmpData:BitmapData;
		 var _twoClipBmpData:BitmapData;
		
		 var _oneOffset:Matrix;
		 var _twoOffset:Matrix;
		
			_twoRectangle = clip1.getBounds(clip1);
			_oneOffset = clip1.transform.matrix;
			_oneOffset.tx = clip1.x - clip2.x;
			_oneOffset.ty = clip1.y - clip2.y;	
			
			_twoClipBmpData = new BitmapData(_twoRectangle.width, _twoRectangle.height, true, 0);
			_twoClipBmpData.draw(clip1, _oneOffset);		
			
			_oneRectangle = clip2.getBounds(clip2);
			_oneClipBmpData = new BitmapData(_oneRectangle.width, _oneRectangle.height, true, 0);
			
			_twoOffset = clip2.transform.matrix;
			_twoOffset.tx = clip2.x - clip2.x;
			_twoOffset.ty = clip2.y - clip2.y;	
			
			_oneClipBmpData.draw(clip2, _twoOffset);
			
			_onePoint = new Point(_oneRectangle.x, _oneRectangle.y);
			_twoPoint = new Point(_twoRectangle.x, _twoRectangle.y);
			
			if(_oneClipBmpData.hitTest(_onePoint, 255, _twoClipBmpData, _twoPoint, 255))
			{
				_returnValue = true;
			}
			
			_twoClipBmpData.dispose();
			_oneClipBmpData.dispose();
			
			return _returnValue;
		}
		
		public static function ConvertMCtoBitmap(movieClip:MovieClip) : Bitmap {
			
			var bitmapData : BitmapData = new BitmapData(movieClip.width, movieClip.height);
			bitmapData.draw(movieClip);
			
			return new Bitmap(bitmapData);
		}
		
		public static function retornaAlgo () : String {
			return "funciton";
		}
	}
	
}
