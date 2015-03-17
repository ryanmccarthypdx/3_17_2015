require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    list = Section.create(:name => 'Knitting 101')
    task = Lesson.create(:description => 'Knitting and romance', :section_id => section.id)
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Description', :with => 'Knitting and Kama Sutra'
    click_on 'Update Lesson'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no description is entered" do
    section = Section.create(:name => 'Home stuff')
    lesson = Lesson.create(:description => 'Wash the dishes', :list_id => list.id)
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Description', :with => ''
    click_on 'Update Task'
    expect(page).to have_content 'errors'
  end
end
