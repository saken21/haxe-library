package jp.okawa.utils;
 
class Calc {

	/* =======================================================================
		Get Random Integer
	========================================================================== */
	public static function getRandomRange(min:Float,max:Float):Float {

		return Math.random() * ( max - min ) + min;

	}


}