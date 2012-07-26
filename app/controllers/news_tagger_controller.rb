class NewsTaggerController < ApplicationController
  def browse
	@news = NewsArticle.all
	
  end

  def tag
  end
end
