

let s:args = readfile(g:tweetvim_config_dir . '/stream/args.txt')

let s:method = s:args[0]
let s:param  = s:args[1:] + [{'raw' : 1}]

let s:tweets = tweetvim#request(s:method, s:param)
call writefile([s:tweets], g:tweetvim_config_dir . "/stream/stream.txt")
