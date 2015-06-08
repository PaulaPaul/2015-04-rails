class AssignmentGrade < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |assignment_grade|
        csv << assignment_grade.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      grade = find_by_id(row["id"]) || new
      grade.attributes = row.to_hash
      grade.save!
    end
  end
  
end
