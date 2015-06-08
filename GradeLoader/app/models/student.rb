class Student < ActiveRecord::Base
  has_many :assignment_grades
  mount_uploader :photo, ImageUploader
end
