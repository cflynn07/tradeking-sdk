oauth         = require 'oauth'
q             = require 'q'
privateConfig = require './config/privateConfig'
config        = require './config/'

###*
 * TradeKing SDK Class
 * @param {string} TradeKing consumer key
 * @param {string} TradeKing consumer secret key
 * @param {string} TradeKing consumer key
 * @param {string} TradeKing consumer key
 * @return {object}
###
TradeKing = (consumerKey    = privateConfig.consumerKey
             consumerSecret = privateConfig.consumerSecret,
             accessToken    = privateConfig.accessToken,
             accessSecret   = privateConfig.accessSecret) ->

  tradeKingUser = new oauth.OAuth(
    'https://developers.tradeking.com/oauth/request_token'
    'https://developers.tradeking.com/oauth/access_token'
    consumerKey
    consumerSecret
    '1.0'
    'http://example.com/tradeking/callback'
    'HMAC-SHA1'
  )

  ###*
   * Perform an API request via oauth object and
   * return result asyncronously via callback, or
   * if no callback is specified via promise
  ###
  apiRequest = (method, resource, callback = null) ->
    deferred = q.defer()
    tradeKingUser.get config.api_endpoint + resource + '.' + config.response_format,
      accessToken,
      accessSecret,
      (err, data, response) ->
        if callback
          callback(err, data, response)
        else
          if err
            deferred.reject err
          else
            deferred.resolve
             "data":     data
             "response": response
    deferred.promise

  ###
  this.getAccounts = (callback) ->
    apiRequest 'get', 'accounts', callback
  this.getAccountsBalances = (callback) ->
    apiRequest 'get', 'accounts/balances', callback
  ###

  #return
  this

module.exports = TradeKing
