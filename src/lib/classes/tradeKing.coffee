oauth         = require 'oauth'
q             = require 'q'
privateConfig = GLOBAL.require 'config/privateConfig'
config        = GLOBAL.require 'config/'

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
  this.apiRequest = (method, resource, callback = null) ->
    if (typeof callback is not 'null') or (typeof callback is not 'function')
      throw new Error 'invalid callback'
    else
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

  #return
  this

module.exports = TradeKing

# Prototypically extending TradeKing class
GLOBAL.require('models/account')
GLOBAL.require('models/market')
GLOBAL.require('models/member')
GLOBAL.require('models/order')
GLOBAL.require('models/stream')
GLOBAL.require('models/utility')
GLOBAL.require('models/watchlist')
