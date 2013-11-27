GLOBAL.root = __dirname + '/'
GLOBAL.require = (m) ->
  require GLOBAL.root + m

# Prototypically extending TradeKing class
GLOBAL.require('models/account')
GLOBAL.require('models/market')
GLOBAL.require('models/member')
GLOBAL.require('models/order')
GLOBAL.require('models/stream')
GLOBAL.require('models/utility')
GLOBAL.require('models/watchlist')

module.exports = GLOBAL.require 'classes/tradeKing'
