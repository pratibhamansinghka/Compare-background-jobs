class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :total
      t.timestamps null: false
    end
  end
end
