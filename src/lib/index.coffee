GLOBAL.root = __dirname + '/'
GLOBAL.require = (m) ->
  require GLOBAL.root + m

TradeKing = GLOBAL.require 'classes/tradeKing'
Account   = GLOBAL.require 'models/account'
Market    = GLOBAL.require 'models/market'
Member    = GLOBAL.require 'models/member'
Order     = GLOBAL.require 'models/order'
Stream    = GLOBAL.require 'models/stream'
Utility   = GLOBAL.require 'models/utility'
Watchlist = GLOBAL.require 'models/watchlist'
