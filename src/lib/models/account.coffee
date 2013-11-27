TradeKing = GLOBAL.require 'classes/tradeKing'

TradeKing.prototype.getAccounts = (callback) ->
  this.apiRequest 'get', 'accounts', callback

TradeKing.prototype.getAccountsBalances = (callback) ->
  this.apiRequest 'get', 'accounts/balances', callback
