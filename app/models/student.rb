class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.sort_all_by_grade_desc
    self.all.sort { |a, b| b.grade <=> a.grade }
  end
end
