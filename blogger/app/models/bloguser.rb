class Bloguser < ActiveRecord::Base
  has_many :blogs
  has_many :comments
end