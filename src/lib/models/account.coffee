TradeKing = GLOBAL.require 'classes/tradeKing'

###*
 * 
###
TradeKing.prototype.getAccounts = () ->
  if arguments.length is 1
    this.apiRequest 'get', 'accounts', arguments[0]
  else if arguments.length is 2
    this.apiRequest 'get', 'accounts/' + arguments[0], arguments[1]
  else
    throw new Error('getAccounts() invalid arguments')

###*
 *
###
TradeKing.prototype.getAccountsBalances = () ->
  
  this.apiRequest 'get', 'accounts/balances', callback
