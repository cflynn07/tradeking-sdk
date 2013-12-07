GLOBAL.root = __dirname + '/'
GLOBAL.require = (m) ->
  require GLOBAL.root + m

module.exports = GLOBAL.require 'classes/tradeKing'
