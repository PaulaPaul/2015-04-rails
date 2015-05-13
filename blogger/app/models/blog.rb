class Blog < ActiveRecord::Base
   belongs_to :bloguser
   has_many :comments
end