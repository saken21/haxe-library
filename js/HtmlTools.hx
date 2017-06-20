package jp.okawa.js;
 
 import haxe.extern.EitherType;

class HtmlTools {

	/* =======================================================================
		Wrap Tag
	========================================================================== */
	public static function wrapTag(target:String,tag:String):String {

		return '<$tag>$target</$tag>';

	}

	/* =======================================================================
		Text To Wrap Tag
	========================================================================== */
	public static function textToWrapTag(text:String,tag:String):String {

		var array : Array<String> = text.split('');
		var html  : String = '';
		for (i in 0 ... array.length) {
			html += wrapTag(array[i],tag);
		}
		return html;

	}

}