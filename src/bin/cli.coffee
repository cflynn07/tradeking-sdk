TradeKing = require '../lib'

client = new TradeKing()

#client.getAccounts (err, data, response) ->
#  console.log data

client.getAccounts () ->
  console.log 'getAccounts'
  console.log JSON.parse arguments[1]
  console.log arguments[1]

client.getAccountsBalances().then () ->
  console.log 'getAccountsBalances'
  console.log arguments
