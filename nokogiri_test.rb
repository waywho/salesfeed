require 'HTTParty'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'uri'

u1 = "http://techcrunch.com/foo/bar" #=> "techcrunch.com" 
u2 = "http://www.techcrunch.com/foo/bar" #=> "techcrunch.com" 
u3 = "www.techcrunch.com/foo/bar" #=> "techcrunch.com" 

class GetUrl
	attr_accessor :url, :publisher, :host

	def initialize(url)
		@url = url
		@publisher = self.publisher
	end

	def publisher_name
		puts "Hosted by #{@host}"
	end

	def publisher
		@host = self.get_host_without_www
	end
	
	def get_host_without_www
	  uri = URI.parse(self.url)
	  uri = URI.parse("http://#{url}") if uri.scheme.nil?
	  host = uri.host.downcase
	  host.start_with?('www.') ? host[4..-1] : host
	end
end

url1 = GetUrl.new(u1)
url2 = GetUrl.new(u2)
url3 = GetUrl.new(u3)

puts url1.get_host_without_www
puts url2.get_host_without_www
puts url3.get_host_without_www

puts url1.publisher_name
puts url2.publisher_name
puts url3.publisher_name

# url = "http://www.whowhatwear.co.uk/what-to-wear-to-an-interview"
# doc = Nokogiri::HTML(open(url))

# puts doc.at_css("meta[property='og:title']")['content']
# puts doc.at_css("meta[property='og:description']")['content']
# puts doc.at_css("meta[property='og:image']")['content']

# page = HTTParty.get("https://www.ssense.com/en-gb/women/sale")
# doc2 = Nokogiri::HTML(page)

# puts doc2.at_css("meta[property='og:title']")['content']
# puts doc2.at_css("meta[property='og:description']")['content']
# puts doc2.at_css("meta[property='og:image']")['content']

# page2 = HTTParty.get("https://www.nytimes.com/2017/06/21/fashion/summer-trends-shopping.html?partner=IFTTT")
# doc3 = Nokogiri::HTML(page2)

# str = "title"
# str2 = str.to_sym

# puts doc3.at_css("meta[property='og:description']")['content']


# if doc3.at_css("meta[property='og:site_name']").nil?
# 	puts doc3.at_css("meta[name='cre']")['content']
# else
# 	puts doc3.at_css("meta[property='og:site_name']")['content']
# end
