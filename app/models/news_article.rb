class NewsArticle
    include Mongoid::Document 
    include Mongoid::Timestamps # adds automagic fields created_at, updated_at

	include Mongoid::Taggable   # for tagging

    set_database :secondary
    
    field :title, type: String  # 标题
    field :content, type: String  # 文章或网页内容（尽量剔除不需要的内容）
    field :raw_page, type: String  # 原始页面
    
    field :news_agent_name  # 新闻机构
    field :link, type: String   # 链接
   
    
    # VALIDATION
    validates_presence_of :title, :content, :raw_page
    validates_presence_of :news_agent_name, :link
    
    validates_uniqueness_of :title, :scope => [:news_agent_name]  # 同一个机构不收录同名文章(避免重复录入) TODO: potential bug, should include aricle publishing date.
    validates_inclusion_of :news_agent_name, :in => ['eeo' ] # NOTE: even in dev, sources are limited. # Later, we may register for expression to get the list of values allowed.
end
