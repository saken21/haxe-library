package jp.okawa.utils;
 
import js.JQuery;

class Handy {

	/* =======================================================================
		Get Shuffle Array
	========================================================================== */
	public static function getShuffleArray(array:Array<Int>):Array<Int> {

		array.sort(function(a:Int,b:Int):Int {
			return untyped(Math.random()-0.5);
		});

		return array;
	}

	/* =======================================================================
		ajust Box Height
	========================================================================== */
	public static function ajustBoxHeigh(jParent:JQuery):Void {

		var row = getRow(jParent);
		var jList : JQuery = jParent.find('li');
		var height: Int    = 0;
		var point : Int    = 0;

		for (i in 0 ... jList.length) {

			var jTarget = jList.eq(i);
			var h = jTarget.height();

			if (i % row == 0) {

				setHeight(jList,point,row,height);

				height = h;
				point  = i;

			}

			if (h > height) height = h;
			
		}

		setHeight(jList,point,row,height);
	}
	
			/* =======================================================================
				Constructor
			========================================================================== */
			private static function getRow(jBox:JQuery):Int {

				var jList   : JQuery = jBox.find('li');
				var counter : Int    = 0;
				var offSetTop: Int   = 0;

				for (i in 0 ... jList.length) {

					var jTarget   : JQuery = jList.eq(i);
					var targetTop : Int    = jTarget.offset().top;

					if (i == 0) offSetTop = targetTop;
					if (offSetTop == targetTop) counter++;
					if (offSetTop < targetTop) break;
					
				}
				
				return counter;
			}
			
			/* =======================================================================
				Constructor
			========================================================================== */
			private static function setHeight(jList:JQuery,start:Int,end:Int,height:Int):Void {

				var startNum : Int = start;
				for (i in 0 ... end) {

					jList.eq(startNum).height(height);
					startNum++;
					
				}
			}

}