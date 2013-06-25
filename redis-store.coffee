oauth1store = (host, port) ->
	if host and port
		this.redisHost = host
		this.redisPort = port
	else
		if host and not port
			this.redisHost = host
		else if not host and port
			this.redisPort = port

	this.initRedis()

oauth1store.prototype.redisHost = '127.0.0.1'
oauth1store.prototype.redisPort = 6379
oauth1store.prototype.redisNS = ''

oauth1store.prototype.initRedis = ->
	conn = require 'redis'
	this.store = conn.createClient(this.redisPort, this.redisHost)

module.exports = oauth1store