module.exports =
  apiEndpoint:    'https://api.tradeking.com/v1/'
  responseFormat: 'json'
  consumerKey:    if process.env.TKConsumerKey    then process.env.TKConsumerKey     else 'TRADEKING_CONSUMER_API_KEY'
  consumerSecret: if process.env.TKConsumerSecret then process.env.TKConsumerSecret else 'TRADEKING_CONSUMER_API_SECRET'
  accessToken:    if process.env.TKAccessToken    then process.env.TKAccessToken     else 'TRADEKING_ACCESS_TOKEN'
  accessSecret:   if process.env.TKAccessSecret   then process.env.TKAccessSecret    else 'TRADEKING_ACCESS_SECRET'

