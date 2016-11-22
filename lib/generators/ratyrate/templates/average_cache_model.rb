class AverageCache < ActiveRecord::Base
  belongs_to :user, :class_name => "<%= file_name.classify %>"
  belongs_to :rateable, :polymorphic => true
end
