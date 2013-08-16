class Task < ActiveRecord::Base
  attr_accessible :id, :story_id, :position, :complete, :description, :kind

  belongs_to :stroy
  belongs_to :project
end
