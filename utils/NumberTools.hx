package jp.okawa.utils;

import haxe.extern.EitherType;
 
class NumberTools {

	/* =======================================================================
		Insert Comma Delimiter
	========================================================================== */
	public static function insertCommaDelimiter(number:EitherType<Int,String>):String {

		if (Type.typeof(number) == Type.ValueType.TInt) {
			number = new String(number);
		}

		return ~/(\d)(?=(\d{3})+$)/g.replace(number,'$1,');

	}

	/* =======================================================================
		Remove Comma Delimiter
	========================================================================== */
	public static function removeCommaDelimiter(numberString:String):String {

		return ~/,/g.replace(numberString,'');

	}

	/* =======================================================================
		Get Random Integer
	========================================================================== */
	public static function getRandomRange(min:Float,max:Float):Float {

		return Math.random() * ( max - min ) + min;

	}


}