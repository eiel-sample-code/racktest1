require 'rubygems'
require 'rack'
require 'erb'

 class RackApp
   def call(env)
     [ 200, {'Content-Type' => 'text/html'}, [body] ]
   end

   def body
     html = open('index.html.erb').read
     ERB.new(html).result
   end
 end
