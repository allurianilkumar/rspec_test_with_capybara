class Student < ActiveRecord::Base
  validates :sname, presence: true
  belongs_to :collage
end
