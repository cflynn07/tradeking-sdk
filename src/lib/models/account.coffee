TK = GLOBAL.require 'classes/TradeKing'

###*
 *
###
TK.prototype.accounts = () ->
  if arguments.length is 1
    this.apiRequest 'get', 'accounts', arguments[0]
  else if arguments.length is 2
    this.apiRequest 'get', 'accounts/' + arguments[0], arguments[1]
  else
    throw new Error 'getAccounts invalid arguments'

###*
 *
###
TK.prototype.accountsBalances = () ->
  this.apiRequest 'get', 'accounts/balances', callback

###*
 *
###
TK.prototype.accountsId = (id) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsId invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id, callback

###*
 *
###
TK.prototype.accountsIdBalances = (id) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsIdBalances invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id + '/balances', callback

###*
 *
###
TK.prototype.accountsIdHistory = (id) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsIdHistory invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id + '/history', callback

###*
 *
###
TK.prototype.accountsIdHoldings = (id) ->
  if (typeof id is not 'string') or (typeof id is not 'number')
    throw new Error 'accountsIdHoldings invalid arguments'
  else
    this.apiRequest 'get', 'accounts/' + id + '/holdings', callback

