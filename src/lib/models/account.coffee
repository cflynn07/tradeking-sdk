TradeKing = GLOBAL.require 'classes/tradeKing'

###*
 *
###
TradeKing.prototype.accounts = (callback) ->
    this.apiRequest 'get', 'accounts', callback

###*
 *
###
TradeKing.prototype.accountsBalances = (callback) ->
  this.apiRequest 'get', 'accounts/balances', callback

###*
 *
###
TradeKing.prototype.accountsId = (id, callback) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsId invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id, callback

###*
 *
###
TradeKing.prototype.accountsIdBalances = (id, callback) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsIdBalances invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id + '/balances', callback

###*
 *
###
TradeKing.prototype.accountsIdHistory = (id, callback) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsIdHistory invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id + '/history', callback

###*
 *
###
TradeKing.prototype.accountsIdHoldings = (id, callback) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsIdHoldings invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id + '/holdings', callback

