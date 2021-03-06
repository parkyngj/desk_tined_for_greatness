class User < ActiveRecord::Base
  has_many :students, class_name: "User", foreign_key: "teacher_id"
  belongs_to :teacher, class_name: "User"

  has_many :results, foreign_key: "student_id"
end
