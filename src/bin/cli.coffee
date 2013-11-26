TradeKing = require '../lib'

client = new TradeKing()

#client.getAccounts (err, data, response) ->
#  console.log data

client.getAccounts () ->
  console.log arguments[1]
  console.log 'callback complete'

client.getAccounts().then () ->
  console.log 'deferred complete'
