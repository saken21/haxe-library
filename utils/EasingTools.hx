package jp.okawa.utils;

import js.jquery.JQuery;
 
class EasingTools {

	/* =======================================================================
		Add JQuery
	========================================================================== */
	public static function addJQuery():Void {

		var easing : Dynamic = untyped JQuery.easing;
		easing.easeOutSine    = easeOutSine;
		easing.easeInSine     = easeInSine;
		easing.easeInOutSine  = easeInOutSine;
		easing.easeInQuart    = easeInQuart;
		easing.easeOutCubic   = easeOutCubic;
		easing.easeInOutExpo  = easeInOutExpo;
		easing.easeInBack     = easeInBack;
		easing.easeOutBack    = easeOutBack;
		easing.easeOutElastic = easeOutElastic;
		easing.easeOutBounce  = easeOutBounce;

	}

		/* =======================================================================
			easeOutSine
		========================================================================== */
		private static var easeOutSine:Dynamic = function (x,t,b,c,d) {

			return c * Math.sin(t / d * (Math.PI / 2)) + b;

		};

		/* =======================================================================
			easeInSine
		========================================================================== */
		private static var easeInSine:Dynamic = function (x,t,b,c,d) {

			return -c * Math.cos(t / d * (Math.PI / 2)) + c + b;

		};

		/* =======================================================================
			easeInOutSine
		========================================================================== */
		private static var easeInOutSine:Dynamic = function (x,t,b,c,d) {

			return -c / 2 * (Math.cos(Math.PI * t / d) - 1) + b;

		};

		/* =======================================================================
			easeInQuart
		========================================================================== */
		private static var easeInQuart:Dynamic = function (x,t,b,c,d) {
			
			untyped return c * (t /= d) * t * t * t + b;
		
		};

		/* =======================================================================
			easeOutCubic
		========================================================================== */
		private static var easeOutCubic:Dynamic = function (x,t,b,c,d) {
		
			untyped return c * ((t = t / d - 1) * t * t + 1) + b;
			
		};

		/* =======================================================================
			easeInOutExpo
		========================================================================== */
		private static var easeInOutExpo:Dynamic = function (x,t,b,c,d) {

			if (t == 0) return b;
			if (t == d) return b + c;
			untyped if ((t /= d / 2) < 1) return c / 2 * Math.pow(2, 10 * (t - 1)) + b;
			untyped return c / 2 * (-Math.pow(2, -10 * --t) + 2) + b;

		};

		/* =======================================================================
			easeInBack
		========================================================================== */
		private static var easeInBack:Dynamic = function (x,t,b,c,d,s) {

			untyped if (s == 'undefined') s = 1.70158;
			untyped return c * (t /= d) * t * ((s + 1) * t - s) + b;

		};

		/* =======================================================================
			easeOutBack
		========================================================================== */
		private static var easeOutBack:Dynamic = function (x,t,b,c,d,s) {
		
			untyped if (s == 'undefined') s = 1.70158;
			untyped return c * ((t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b;
		
		};

		/* =======================================================================
			easeOutElastic
		========================================================================== */
		private static var easeOutElastic:Dynamic = function (x,t,b,c,d) {
		
			var s = 1.70158;
			var p = 0;
			var a = c;
			
			if (t == 0) return b;
			untyped if ((t /= d) == 1) return b + c;
			untyped if (!p) p = d * .3;
			if (a < Math.abs(c)) { a = c; var s = p / 4; }
			else var s = p / (2 * Math.PI) * Math.asin (c / a);
			untyped return a * Math.pow(2,-10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p ) + c + b;
		
		};

		/* =======================================================================
			easeOutBounce
		========================================================================== */
		private static var easeOutBounce:Dynamic = function (x,t,b,c,d) {
		
			untyped if ((t /= d) < (1 / 2.75)) return c * (7.5625 * t * t) + b;
			else if (t < (2 / 2.75)) return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b;
			else if (t < (2.5 / 2.75)) return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b;
			else return c*(7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b;
		
		};

}