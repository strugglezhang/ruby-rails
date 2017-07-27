#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

require 'mysql2'

client = Mysql2::Client.new(
    :host => "localhost",
    :username => "root",
    :password => "root",
    :database => 'admin',
    :port => '3306'
)


puts client

results = client.query("SELECT * FROM users")


results.each do  |x|

  puts x
end