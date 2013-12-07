TradeKing = require '../lib'

client = new TradeKing()

client.getAccounts () ->
  console.log JSON.parse arguments[1]
  console.log arguments[1]

client.getAccountsBalances().then () ->
  console.log arguments
