package jp.okawa.api;

import js.html.Event;
import jp.okawa.externals.youtube.YoutubePlayer;

class YoutubeManager {

	private var _player : YoutubePlayer;

	/* =======================================================================
    	Constractor
    ========================================================================== */
	public function new(elementId:String,param:{}):Void {

		_player = new YoutubePlayer(elementId,param);

	}

	/* =======================================================================
		Play Handler
	========================================================================== */
	public function onPlayerReady():Void {

	}

	/* =======================================================================
		Play State Change
	========================================================================== */
	public function onPlayerStateChange(event:Dynamic):Void {

		trace(event);

		switch(event.data){
			case -1: 
				trace('unstarted');
			case 0: 
				trace('completed');
			case 1: 
				trace('playing');
			case 2: 
				trace('pausing');
			case 3: 
				trace('buffering');
			case 5: 
				trace('cued');
		}

	}

	/* =======================================================================
		Error Handler
	========================================================================== */
	public function onErrorHandler():Void {

	}

	/* =======================================================================
		Play
	========================================================================== */
	public function play(event:Event = null):Void {

		_player.playVideo();

	}

	/* =======================================================================
		Play Handler
	========================================================================== */
	public function pause(event:Event = null):Void {

		_player.pauseVideo();

	}

	/* =======================================================================
		Seek To
	========================================================================== */
	public function seekTo(seconds:Int,allowSeekAhead:Bool):Void {

		_player.seekTo(seconds,allowSeekAhead);

	}

	/* =======================================================================
		Get Time
	========================================================================== */
	public function getTime():Float {

		return _player.getCurrentTime();

	}

	/* =======================================================================
		Get Duration
	========================================================================== */
	public function getDuration():Float {

		return _player.getDuration();

	}

}
