class Section < ActiveRecord::Base
  validates :title, :presence => true
end
