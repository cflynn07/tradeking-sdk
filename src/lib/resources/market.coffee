TradeKing = GLOBAL.require 'classes/tradeKing'

###*
 *
###
TradeKing.prototype.marketClock = (callback) ->
  this.apiRequest 'get', 'market/clock', callback

###*
 *
###
TradeKing.prototype.marketExtQuotes = (callback) ->
  this.apiRequest 'get', 'market/ext/quotes', callback
