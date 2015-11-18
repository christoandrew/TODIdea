class User < ActiveRecord::Base
  has_many :articles
  belongs_to :comment
end
