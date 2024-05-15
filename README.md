# IopApiClient

A simple rest API client For International Open Platform for ruby


## Requirements

MRI Ruby 2.0 and newer are supported. Alternative interpreters compatible with
2.0+ should work as well.

The iop_api_client gem depends on these other gems for usage at runtime:

* [rest-client](http://rubygems.org/gems/rest-client)


## Release Changes

1.2.1 : use CGI:encode to encode get params
1.2.0 : change sign method from hmac-md5 to hmac-sha256
1.1.0 : Change API Sign algorithms


## Installation

Add this line to your application's Gemfile:


```ruby
gem 'iop_api_client'
```

And then execute:

    $ bundle

Or install it yourself as:

	$ gem install rest-client
    $ gem install iop_api_client

## Usage

```ruby

require 'iop_api_client'

# init a REST Client
client = IopApiClient::Client.new('https://api-sg.aliexpress.com/rest','***AppKey***','***SecretKey**')

# init a API Request for api : /xiaoxuan/mockfileupload
request = IopApiClient::Request.new('/xiaoxuan/mockfileupload')

# add s simple type parameter. eg String, Number.
request.add_api_parameter("file_name","pom.xml")

# add s file parameter
request.add_file_parameter("file_bytes","/Users/xt/Documents/work/tasp/tasp/pom.xml")

# submit api request
response = client.execute(request)

puts response.success?

# full api response
puts response.body

# response code, 0 is no error
puts response.code

# response type nil,ISP,ISV,SYSTEM
# nil ：no error
# ISP : API Service Provider Error
# ISV : API Request Client Error
# SYSTEM : Iop platform Error
puts response.type


```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

