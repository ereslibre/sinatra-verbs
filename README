## What is Sinatra Verbs ?

Sinatra Verbs is a Sinatra extension that allows you to extend regular supported HTTP verbs. It can be used just for fun, or to 
implement a WebDAV server, for instance.

## Installing Sinatra Verbs

    sudo gem install sinatra-verbs

## Using Sinatra Verbs

    require 'sinatra'
    require 'sinatra/verbs'
    
    Sinatra::Verbs.custom :mkcol, :hello
    
    mkcol '/hi' do
      "Hello, this is MKCOL verb"
    end

    hello '/hi' do
      "Hello, this is HELLO verb"
    end
