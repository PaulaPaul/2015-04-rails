class Comment < ActiveRecord::Base
  belongs_to :bloguser
  belongs_to :blog
end
