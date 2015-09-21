class Text < ActiveRecord::Base
  belongs_to :users
  belongs_to :images
end
