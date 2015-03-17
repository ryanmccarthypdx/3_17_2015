require 'rails_helper'

describe "the edit a lesson process" do

  it "gives error when no title is entered" do
    section = Section.create(:title => 'Home stuff')
    lesson = Lesson.create(:title => 'Hi', :body => 'hola', :section_id => section.id)
    visit section_path(section)
    page.first(:link, "Edit").click
    fill_in 'Title', :with => ''
    click_on 'Update Lesson'
    expect(page).to have_content 'errors'
  end

  it "edits a section" do
    section = Section.create(:title => 'Knitting 101')
    lesson = Lesson.create(:title => 'Hi', :body => 'hola', :section_id => section.id)
    visit section_path(section)
    page.first(:link, "Edit").click
    fill_in 'Title', :with => 'Knitting and Kama Sutra'
    click_on 'Update Lesson'
    expect(page).to have_content 'Knitting and Kama Sutra'
  end

end
