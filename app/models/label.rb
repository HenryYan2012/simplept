class Label < ActiveRecord::Base
  attr_accessible :id, :kind, :name, :project_id

  belongs_to :project
end
