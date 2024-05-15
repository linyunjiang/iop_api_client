#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

require 'iop_api_client'
require 'pp'

appkey = 33505222
appSecret =  "e1fed6b34feb26aabc391d187732af93"
url = "https://api-pre.taobao.tw/rest"
access_token = "50000801b05rOupee1eb7da61hhR5KrUlhjuK4iRTnj49PxcKO0SnPWvCBvPl"
client = IopApiClient::Client.new(url, appkey, appSecret)
client.setLogLevel(IopApiClient::Constants::Log_level_debug)
# client.setOpenTimeout(0.01)
request = IopApiClient::Request.new('aliexpress.logistics.redefining.getlogisticsselleraddresses','get')
request.add_api_parameter('seller_address_query','pickup')
request.set_simplify = 'true'
# create_after =((Time.now.to_time-10.days)).in_time_zone("Singapore").iso8601
response = client.execute(request, access_token)

puts response.success?
j
pp response