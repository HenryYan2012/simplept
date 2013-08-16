class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :story_id
      t.integer :position
      t.boolean :complete
      t.string :kind
      t.string :description

      t.timestamps
    end
  end
end
