class AccountPoi
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :account_id, :type => String  # NOTE: can't use column named id which might be reseved for mongoid, other noSql alike
  field :name, :type => String       # human readable name 
  field :sns_name, :type => String   # indicate to which website the account belongs
  # TODO: validation. limit the :sns_name data using options selection UI controls

  # key :account_id, :sns_name  # SUG: try use default! composite key, 

  validates_uniqueness_of :account_id, :scope => :sns_name
end
