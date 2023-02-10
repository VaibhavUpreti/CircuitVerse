class CreateEventRollups < ActiveRecord::Migration[7.0]
  def change
    create_table :event_rollups do |t|
      t.string :event_bucket, index: {unique: true}
      t.date :time_bucket#, index: {unique: true}
      #t.string :event_bucket #, index: {unique: true}
     # t.string :path
      t.hll :visitor_ids
    end
  end
end
