class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :id
      t.string :url
      t.string :name
      t.text :description
      t.string :stroy_type
      t.integer :estimate
      t.string :current_state
      t.integer :project_id
      t.integer :requested_by_id
      t.integer :owned_by_id

      t.timestamps
    end
  end
end
