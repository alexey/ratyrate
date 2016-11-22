class CreateAverageCaches < ActiveRecord::Migration

  def self.up
    create_table :average_caches do |t|
      t.belongs_to :user
      t.belongs_to :rateable, :polymorphic => true
      t.float :avg, :null => false
      t.timestamps
    end

    add_index :average_caches, [:user_id, :rateable_id, :rateable_type]
  end

  def self.down
    drop_table :average_caches
  end

end

