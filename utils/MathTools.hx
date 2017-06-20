package jp.okawa.utils;
 
class MathTools {

	/* =======================================================================
		Random Int
	========================================================================== */
	public static function randomInt(min:Int,max:Int):Int {

		return min + Math.floor( Math.random() * ( max - min + 1 ) );

	}

	/* =======================================================================
		Random Float
	========================================================================== */
	public static function randomFloat(min:Float,max:Float):Float {

		return min + Math.random() * ( max - min );

	}

	/* =======================================================================
		Random Float Spread
	========================================================================== */
	public static function randomFloatSpread(range:Float):Float {

		return range * ( .5 - Math.random() );

	}


}