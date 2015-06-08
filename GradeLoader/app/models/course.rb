class Course < ActiveRecord::Base
  has_many :assignment_grades
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |course|
        csv << course.attributes.values_at(*column_names)
      end
    end
  end
  
end
