require 'rubygems'
require 'rack'
require 'erb'

 class RackApp
   def call(env)
     [ 200, {'Content-Type' => 'text/html'}, [body] ]
   end

   def body
     open('index.html.erb').read
   end
 end
