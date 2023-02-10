class CreateProjectViews < ActiveRecord::Migration[7.0]
  def change
    create_table :project_views do |t|
      t.integer :project_id, index: {unique: true} 
      t.hll :visitor_ids
      # t.timestamps
    end
  end
end
