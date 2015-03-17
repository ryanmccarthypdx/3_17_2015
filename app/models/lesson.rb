class Lesson < ActiveRecord::Base
  validates :title, :body, :number, :presence => true
  belongs_to :section

  def next
    Lesson.find_by(number: number + 1)
  end

  def previous
    Lesson.find_by(number: number - 1)
  end

end
