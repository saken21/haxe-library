package jp.okawa.externals;

@:native("SimplexNoise")
extern class SimplexNoise {

	public function new():Void;
	public function dot(g:Array<Float>,x:Float,y:Float):Float;
	public function noise(xin:Float,yin:Float):Float;
	public function noise3d(xin:Float,yin:Float,zin:Float):Float;

}
