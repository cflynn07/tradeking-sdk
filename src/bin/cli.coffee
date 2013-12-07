TradeKing = require '../lib'

client = new TradeKing()

client.accounts ()->
  console.log JSON.parse arguments[1]
  console.log arguments[1]

#client.accountsBalances().then () ->
#  console.log arguments
