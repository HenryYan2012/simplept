class Project < ActiveRecord::Base
  attr_accessible :id, :name

  has_many :labels
  has_many :stories
end
