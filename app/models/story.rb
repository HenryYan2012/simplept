class Story < ActiveRecord::Base
  attr_accessible :id, :url, :name, :description, :stroy_type, :estimate, :current_state, :owned_by_id, :project_id, :requested_by_id
  belongs_to :project
  has_many :labels
end
