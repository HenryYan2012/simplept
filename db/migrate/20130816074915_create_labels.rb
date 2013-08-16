class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.string :kind
      t.integer :project_id

      t.timestamps
    end
  end
end
