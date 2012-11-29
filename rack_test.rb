//rack_test.rb
require 'rubygems'
require 'rack'
require 'erb'

 class RackApp
   def call(env)
     [200, 
      {'Content-Type' => 'text/html'}, 
      ['<html>
        <head><title>Rack test</title></head>
        <body>
        <h1>Rack test</h1>
        <p> 
           <% (1..9).each do |y| %>  <%= y %><% end %>
           <%
              (1..9).each do |x|
               %><%= x %><%
              (1..9).each do |y|
            %><%= %><%
          end
              %>
          <% end %></p>
        </body>
        </html>'
                                      ]
                                       ]
   end
 end