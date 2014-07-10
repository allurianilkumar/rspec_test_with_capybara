class Collage < ActiveRecord::Base
  validates :cname, presence: true
  has_many :students
end
