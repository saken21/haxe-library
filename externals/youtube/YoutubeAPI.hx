package jp.okawa.externals.youtube;
 
@:native("YT")
extern class YoutubeAPI {
     
    public static function get():Dynamic;
     
    public static function loaded():Dynamic;
     
    public static function loading():Dynamic;
     
    public static function ready():Dynamic;
     
    public static function scan():Dynamic;
     
    public static function setConfig():Dynamic;
     
    public static function subscribe():Dynamic;
 
    public static function unsubscribe():Dynamic;
             
}