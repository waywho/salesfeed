require 'HTTParty'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.whowhatwear.co.uk/what-to-wear-to-an-interview"
doc = Nokogiri::HTML(open(url))

puts doc.at_css("meta[property='og:title']")['content']
puts doc.at_css("meta[property='og:description']")['content']
puts doc.at_css("meta[property='og:image']")['content']

page = HTTParty.get("http://www.topman.com/en/tmuk/category/sale-6706764/view-all-sale-2344190/N-d54Z7yd?No=0&Nrpp=20&siteId=%2F12555&cmpid=aff_blog_awuk_217929&utm_medium=affiliate&network=awuk&affiliate_id=217929&awc=2479_1498332501_a3d9064ac719c0a540041eb5911b3523&geoip=noredirect")
doc2 = Nokogiri::HTML(page)

puts doc2