require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.whowhatwear.co.uk/what-to-wear-to-an-interview"
doc = Nokogiri::HTML(open(url))

puts doc.at_css("meta[property='og:title']")['content']
puts doc.at_css("meta[property='og:description']")['content']
puts doc.at_css("meta[property='og:image']")['content']