
let tweets = tweetvim#request("home_timeline", {'raw' : 1})
call writefile([tweets], g:tweetvim_config_dir . "/stream/stream.txt")
