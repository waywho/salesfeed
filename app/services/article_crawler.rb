class ArticleCrawler
	attr_accessor :doc, :url

	def initialize(url)
		@url = url
		@doc = Nokogiri::HTML(open(url))
	end

	def title
		self.doc.at_css("meta[property='og:title']")['content']
	end

	def description
		self.doc.at_css("meta[property='og:description']")['content']
	end

	def image_url
		self.doc.at_css("meta[property='og:image']")['content']
	end

	def publisher
		if self.doc.at_css("meta[property='og:site_name']").nil?
			self.doc.at_css("meta[name='cre']")['content']
		else
			self.doc.at_css("meta[property='og:site_name']")['content']
		end
	end
	
	def get_host
	  uri = URI.parse(self.url)
	  uri = URI.parse("http://#{url}") if uri.scheme.nil?
	  host = uri.host.downcase
	  host.start_with?('www.') ? host[4..-1] : host
	end
end


