class Lesson < ActiveRecord::Base
  validates :title, :body, :number, :presence => true
  belongs_to :section

  def next
    new_number = (number + 1)
    Lesson.find_by(number: new_number)
  end

  def previous
    new_number = (number - 1)
    Lesson.find_by(number: new_number)
  end

end
