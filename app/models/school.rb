class School < ActiveRecord::Base
  has_many :scholarships
  has_many :users, :through => :scholarships
end
