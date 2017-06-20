package jp.okawa.utils;

class ArrayTools {

	/* =======================================================================
		Get Random Item
	========================================================================== */
	public static function getRandomItem(array:Array<Dynamic>):Dynamic {

		return array[Math.floor(Math.random() * array.length)];

	}

	/* =======================================================================
		Get Shuffle
	========================================================================== */
	public static function getShuffle(array:Array<Dynamic>):Array<Dynamic> {

		return array.sort(function(a:Int,b:Int):Float {
			return untyped(Math.random()-0.5);
		});

	}

}