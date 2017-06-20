package jp.okawa.externals.youtube;
 
@:native("YT.Player")
extern class YoutubePlayer {
    public var a:Dynamic;
     
    public function new(id:String, obj:Dynamic):Void;
     
    public function playVideo():Void;
     
    public function stopVideo():Void;
     
    public function pauseVideo():Void;
     
    public function getDuration():Int;
     
    public function getVideoUrl():String;
     
    public function getVideoEmbedCode():String;
     
    public function getAvailableQualityLevels():Array<String>;
     
    public function setPlaybackQuality(suggestedQuality:String):Void;
     
    public function getPlaybackQuality():String;
     
    public function getCurrentTime():Int;
     
    public function mute():Void;
     
    public function unMute():Void;
             
    public function isMuted():Bool;
     
    public function setVolume(volume:Int):Void;
     
    public function getVolume():Int;
     
    public function seekTo(seconds:Int, allowSeekAhead:Bool):Void;  
}