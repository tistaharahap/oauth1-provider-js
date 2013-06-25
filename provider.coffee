Store = require './redis-store'

oauth1provider = (redisHost = '127.0.0.1', redisPort = 6379) ->
	this.store = new Store(host = redisHost, port = redisPort)

oauth1provider.prototype.store = null

oauth1provider.prototype.authorizeRequest = (uri) ->
	return ""

oauth1provider.prototype.authorizeConsumer = ->
	return ""

oauth1provider.prototype.authorizeXauth = ->
	return true

oauth1provider.prototype._verifyXauthCredentials = ->
	return true

oauth1provider.prototype.generateSignature = (base_sig, cons_sec, user_sec = null) ->
	return ""

oauth1provider.prototype.isNonceUsed = (nonce) ->
	return false

module.exports = oauth1provider