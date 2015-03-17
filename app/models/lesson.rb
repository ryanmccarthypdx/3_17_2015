class Lesson < ActiveRecord::Base
  validates :title, :body, :presence => true
  belongs_to :section
end
