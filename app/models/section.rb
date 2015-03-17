class Section < ActiveRecord::Base
  validates :title, :presence => true
  has_many :lessons
end
