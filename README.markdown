# Sinatra Verbs

## What is Sinatra Verbs ?

Sinatra Verbs is a Sinatra extension that allows you to extend regular supported HTTP verbs. It can be used just for fun, or to 
implement a WebDAV server, for instance.

## Installing Sinatra Verbs

    sudo gem install sinatra-verbs

## Using Sinatra Verbs

### Using Sinatra::Base

require 'sinatra/base'
require 'sinatra/verbs'

Sinatra::Verbs.custom :mkcol, :hello

class MyApp < Sinatra::Base
  mkcol '/hi' do
    "Hello, this is MKCOL verb"
  end

  hello '/hi' do
    "Hello, this is HELLO verb"
  end

  run!
end

### Classic

    require 'sinatra'
    require 'sinatra/verbs'
    
    Sinatra::Verbs.custom :mkcol, :hello
    
    mkcol '/hi' do
      "Hello, this is MKCOL verb"
    end

    hello '/hi' do
      "Hello, this is HELLO verb"
    end

## Lightning-fast testing

Write one of the previous examples to a file, say: test-sinatra-verbs.rb

    ruby test-sinatra-verbs.rb

Now let's start a telnet session:

    telnet localhost 4567
    > HELLO /hi HTTP/1.1<ENTER>
    > <ENTER>

    < HTTP/1.1 200 OK 
    < Content-Type: text/html;charset=utf-8
    < Content-Length: 25
    < Server: WEBrick/1.3.1 (Ruby/1.9.2/2010-12-25)
    < Date: Sat, 22 Jan 2011 01:39:58 GMT
    < Connection: Keep-Alive
    <
    < Hello, this is HELLO verb
