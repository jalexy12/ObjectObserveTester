'use strict'

window.TweetStorage = [];



class TweetStore{
	constructor(){
		this.store = [];
		var that = this;

	}

	addStore(message){
		var tweet = new Tweet(message)
		this.store.push(tweet)
		TweetStorage = this.store;
	}


}

$( document ).ready(function() {
	var tweetStore = new TweetStore
	var NewTweet = pusher.subscribe('NewTweet');
	NewTweet.bind('newTweet', function(data) {
	 	tweetStore.addStore(JSON.parse(data.message))
	});
});

class Tweet{
	constructor(props){
		this.title = props.title;
		this.text = props.text;
	}
}
