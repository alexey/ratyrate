class CreateOverallAverages < ActiveRecord::Migration

  def self.up
    create_table :overall_averages do |t|
      t.belongs_to :rateable, :polymorphic => true
      t.float :avg_score, :null => false
      t.timestamps
    end

    add_index :overall_averages, [:rateable_id, :rateable_type]
  end

  def self.down
    drop_table :overall_averages
  end

end

