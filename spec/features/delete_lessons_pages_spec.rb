require 'rails_helper'

describe "the delete a lesson process" do
  it "deletes a lesson" do
    section = Section.create(:title => 'Home stuff')
    lesson = Lesson.create(:title => 'hi', :body => 'ho', :section_id => section.id)
    visit section_path(section)
    page.first(:link, "Delete").click
    expect(page).to have_no_content 'hi'
  end
end
