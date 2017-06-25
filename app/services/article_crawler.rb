class ArticleCrawler
	attr_accessor :doc

	def initialize(url)
		@doc = Nokogiri::HTML(open(url))
	end

	def title
		@doc.at_css("meta[property='og:title']")['content']
	end

	def description
		@doc.at_css("meta[property='og:description']")['content']
	end

	def image_url
		@doc.at_css("meta[property='og:image']")['content']
	end

	def publisher
		if @doc.at_css("meta[property='og:site_name']").nil?
			@doc.at_css("meta[name='cre']")['content']
		else
			@doc.at_css("meta[property='og:site_name']")['content']
		end
	end
	
end


