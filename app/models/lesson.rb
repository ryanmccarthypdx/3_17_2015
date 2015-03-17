class Lesson < ActiveRecord::Base
  validates :title, :body, :presence => true
  
end
