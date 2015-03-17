require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :body }
  it { should validate_presence_of :title }
  it { should validate_presence_of :number }
  it { should belong_to :section }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:title => 'lesson1', :body => 'hihi', :number => 1})
      next_lesson = Lesson.create({:title => 'lesson2', :body => 'herlo', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:title => 'lesson1', :body => 'hihi', :number => 1})
      next_lesson = Lesson.create({:title => 'lesson2', :body => 'herlo', :number => 2})
      expect(next_lesson.previous).to eq current_lesson
    end
  end

end
